
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee754sp ;


 int CLEARCX ;
 int COMPXSP ;
 int EXPLODEXSP ;






 int SPDNORMX ;
 int ieee754sp_fint (int ) ;
 int ieee754sp_inf (int) ;
 int ieee754sp_nanxcpt (int ,char*,int ) ;
 int xc ;
 int xe ;

ieee754sp ieee754sp_logb(ieee754sp x)
{
 COMPXSP;

 CLEARCX;

 EXPLODEXSP;

 switch (xc) {
 case 129:
  return ieee754sp_nanxcpt(x, "logb", x);
 case 130:
  return x;
 case 132:
  return ieee754sp_inf(0);
 case 128:
  return ieee754sp_inf(1);
 case 133:
  SPDNORMX;
  break;
 case 131:
  break;
 }
 return ieee754sp_fint(xe);
}
