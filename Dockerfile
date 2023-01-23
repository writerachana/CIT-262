# build enviroment

FROM node:16.15.0 as build
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package.jason ./
COPY package-lock.json ./
RUN npm install 
RUN npm run test