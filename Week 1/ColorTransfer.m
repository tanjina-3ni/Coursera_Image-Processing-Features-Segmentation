img1 = imread('source.jpg');
img2 = imread('target.jpg');
[S1,S2,S3] = imsplit(rgb2lab(img1));
[T1,T2,T3] = imsplit(rgb2lab(img2));
O1 = colortransfer(S1,T1);
O2 = colortransfer(S2,T2);
O3 = colortransfer(S3,T3);
montage({img1, img2, lab2rgb(cat(3,O1,O2,O3))},'Size',[1,3])
