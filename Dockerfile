FROM node:12

COPY . /application

WORKDIR /application

RUN yarn \
  && cd client \
  && yarn \
  && yarn build \
  && cd ..

ENV NODE_ENV production

# $PORT is set by Heroku
# EXPOSE 5000


CMD [ "yarn", "start" ]