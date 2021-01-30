FROM python:stretch
COPY . /app
WORKDIR /app
RUN apt-get update && apt-get install -y python-pip
RUN pip install -r requirements.txt
CMD ["gunicorn", "-b", ":8080", "main:APP"]