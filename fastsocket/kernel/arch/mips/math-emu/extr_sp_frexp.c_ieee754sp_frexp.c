
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee754sp ;


 int CLEARCX ;
 int COMPXSP ;
 int EXPLODEXSP ;






 int SPDNORMX ;
 scalar_t__ SP_EBIAS ;
 int SP_HIDDEN_BIT ;
 int buildsp (int ,scalar_t__,int) ;
 int xc ;
 int xe ;
 int xm ;
 int xs ;

ieee754sp ieee754sp_frexp(ieee754sp x, int *eptr)
{
 COMPXSP;
 CLEARCX;
 EXPLODEXSP;

 switch (xc) {
 case 129:
 case 130:
 case 132:
 case 128:
  *eptr = 0;
  return x;
 case 133:
  SPDNORMX;
  break;
 case 131:
  break;
 }
 *eptr = xe + 1;
 return buildsp(xs, -1 + SP_EBIAS, xm & ~SP_HIDDEN_BIT);
}
