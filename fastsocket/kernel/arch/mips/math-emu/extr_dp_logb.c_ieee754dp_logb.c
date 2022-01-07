
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee754dp ;


 int CLEARCX ;
 int COMPXDP ;
 int DPDNORMX ;
 int EXPLODEXDP ;






 int ieee754dp_fint (int ) ;
 int ieee754dp_inf (int) ;
 int ieee754dp_nanxcpt (int ,char*,int ) ;
 int xc ;
 int xe ;

ieee754dp ieee754dp_logb(ieee754dp x)
{
 COMPXDP;

 CLEARCX;

 EXPLODEXDP;

 switch (xc) {
 case 129:
  return ieee754dp_nanxcpt(x, "logb", x);
 case 130:
  return x;
 case 132:
  return ieee754dp_inf(0);
 case 128:
  return ieee754dp_inf(1);
 case 133:
  DPDNORMX;
  break;
 case 131:
  break;
 }
 return ieee754dp_fint(xe);
}
