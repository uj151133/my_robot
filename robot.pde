int n = 10;
float[] x,y,vx,vy;
void drawCar(float x, float y) {
strokeWeight(3);
stroke(102);
line(x+100,y,x+100,y-50);
fill(39,125,211);
stroke(39,125,211);
ellipse(x+100,y+10,70,70);
fill(243,152,0);
stroke(243,152,0);
ellipse(x+100,y-60,20,20);
ellipse(x,y+75,50,50);
ellipse(x+200,y+75,50,50);
fill(153,193,234);
stroke(153,193,234);
rect(x,y,200,150);
fill(255,204,0);
stroke(255,204,0);
triangle(x+100,y+75,x+90,y+93,x+110,y+93);
fill(255);
stroke(153,193,234);
rect(x+50,y+125,100,15);
strokeWeight(10);
fill(0);
stroke(255);
ellipse(x+50,y+50,50,50);
ellipse(x+150,y+50,50,50);
}

void setup() {
size(900, 900);
x = new float[n];
y = new float[n];
vx= new float[n];
vy= new float[n];
for (int i = 0; i < n; i++) {
float angle = random(360); x[i] = random(width-100)+50;
y[i] = random(height-100)+50; vx[i]= 2*cos(2*PI/360*angle); vy[i]= 2*sin(2*PI/360*angle);
} }
void draw() { background(255);
for (int i = 0; i < n; i++) {
drawCar(x[i],y[i]);
x[i] += vx[i];
y[i] += vy[i];
if (x[i]<=50 || x[i]>=width-225) {
vx[i] = -vx[i]; }
if (y[i]<=25 || y[i]>=height-200) {
vy[i] = -vy[i]; }
} }
