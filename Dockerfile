FROM python:3.8

RUN pip install \
    fastapi==0.88.0 \
    uvicorn==0.20.0

EXPOSE 8080

COPY ./app /app

CMD ["bash", "-c", "uvicorn app.main:app --host 0.0.0.0 --port 8080"]
