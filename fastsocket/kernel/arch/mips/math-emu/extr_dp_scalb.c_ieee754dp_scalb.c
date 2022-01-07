
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee754dp ;


 int CLEARCX ;
 int COMPXDP ;
 int DPDNORMX ;
 int DPNORMRET2 (int ,scalar_t__,int,char*,int ,int) ;
 int EXPLODEXDP ;






 int ieee754dp_nanxcpt (int ,char*,int ,int) ;
 int xc ;
 scalar_t__ xe ;
 int xm ;
 int xs ;

ieee754dp ieee754dp_scalb(ieee754dp x, int n)
{
 COMPXDP;

 CLEARCX;

 EXPLODEXDP;

 switch (xc) {
 case 129:
  return ieee754dp_nanxcpt(x, "scalb", x, n);
 case 130:
 case 132:
 case 128:
  return x;
 case 133:
  DPDNORMX;
  break;
 case 131:
  break;
 }
 DPNORMRET2(xs, xe + n, xm << 3, "scalb", x, n);
}
