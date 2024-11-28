#!/bin/bash

npm install -D tailwindcss
npx tailwindcss init

{ echo 'module.exports = {
  content: ["./src/**/*.{html,js}"],
  theme: {
    extend: {},
  },
  plugins: [],
}' 
} > tailwind.config.js

mkdir src
cd src || exit

{ echo '<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="Description of the Page" />
        <meta name="theme-color" content="#2c313a" />
        <link href="/dist/output.css" rel="stylesheet">
        <title>Title</title>
    </head>
    <body></body>
</html>'
} > index.html

{ echo '@tailwind base;
@tailwind components;
@tailwind utilities;'
} > input.css

cd ..
code .

