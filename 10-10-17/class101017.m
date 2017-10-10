%Powerpoint Ch 3 Slide 23
%Vinh Nguyen
%10/10/2017
%Reduction of the black diagram as shown below
%Dynamic Systems and Control Theory
%Professor: Dr. Tekes
G1=tf(1,[1 0])
G2=tf(3, [1])
N=feedback(G1,G2)
G3=tf(1, [1 1])
G4=tf(1, [1 3])
Gforward=series(G3,G4)
G5=tf([2 0], [1 2])
M=feedback(Gforward,G5) %negative feedback
disp('M = Negative feedback');
G6=tf(1,[1])
G7=tf([1 3], [1])
P=parallel(G6, G7)
T=series(M, P)
disp('T = Transfer Function bewteen output and input');