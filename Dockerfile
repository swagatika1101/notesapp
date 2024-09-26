FROM python:3.9

WORKDIR /noteapp/backend

COPY requirements.txt /noteapp/backend
RUN pip install -r requirements.txt

COPY . /noteapp/backend

EXPOSE 8000

CMD [ "python","/notesapp/backend/manage.py","runserver","0.0.0.0:8000" ]
