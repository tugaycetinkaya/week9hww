/**
How to load and play video
**/ 

import processing.video.*;
import controlP5.*;
ControlP5 cp5;

Movie movie;


void setup() {
  size(640, 410);
  
  background(0);
  
  // Load and play the video in a loop
  movie = new Movie(this, "movie.mp4");
  movie.play();
 cp5=new ControlP5(this);
 cp5.addButton("Play")


.setValue(0)

.setPosition(280,385)

.setSize(30,19)

;

 cp5=new ControlP5(this);

cp5.addButton("Stop")

.setValue(0)

.setPosition(330,385)

.setSize(30,19)

;
cp5=new ControlP5(this);

cp5.addButton("Pause")

.setValue(0)

.setPosition(380,385)

.setSize(30,19)

;
 

 

}

 

void movieEvent(Movie m) {

  m.read();

}

 

void Play() {

  

  movie.play();

 

}

 

void Stop() {
movie.jump(0);
    movie.pause();

}
void Pause() {

    movie.pause();

}
 

 

void draw() {

 

  image(movie, 0, 0, width, height-30);

}

 