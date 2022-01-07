
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee754sp ;


 int CLEARCX ;
 int COMPXSP ;
 int EXPLODEXSP ;






 int SPDNORMX ;
 int SPNORMRET2 (int ,scalar_t__,int,char*,int ,int) ;
 int ieee754sp_nanxcpt (int ,char*,int ,int) ;
 int xc ;
 scalar_t__ xe ;
 int xm ;
 int xs ;

ieee754sp ieee754sp_scalb(ieee754sp x, int n)
{
 COMPXSP;

 CLEARCX;

 EXPLODEXSP;

 switch (xc) {
 case 129:
  return ieee754sp_nanxcpt(x, "scalb", x, n);
 case 130:
 case 132:
 case 128:
  return x;
 case 133:
  SPDNORMX;
  break;
 case 131:
  break;
 }
 SPNORMRET2(xs, xe + n, xm << 3, "scalb", x, n);
}
