
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee754sp ;


 int CLEARCX ;
 int COMPXSP ;
 int EXPLODEXSP ;






 scalar_t__ SP_EBIAS ;
 scalar_t__ SP_HIDDEN_BIT ;
 scalar_t__ SP_MBITS ;
 int buildsp (int ,scalar_t__,scalar_t__) ;
 int ieee754sp_zero (int ) ;
 int xc ;
 scalar_t__ xe ;
 scalar_t__ xm ;
 int xs ;

ieee754sp ieee754sp_modf(ieee754sp x, ieee754sp * ip)
{
 COMPXSP;

 CLEARCX;

 EXPLODEXSP;

 switch (xc) {
 case 129:
 case 130:
 case 132:
 case 128:
  *ip = x;
  return x;
 case 133:

  *ip = ieee754sp_zero(xs);
  return x;
 case 131:
  break;
 }
 if (xe < 0) {
  *ip = ieee754sp_zero(xs);
  return x;
 }
 if (xe >= SP_MBITS) {
  *ip = x;
  return ieee754sp_zero(xs);
 }


 *ip = buildsp(xs, xe + SP_EBIAS,
        ((xm >> (SP_MBITS - xe)) << (SP_MBITS - xe)) &
        ~SP_HIDDEN_BIT);




 xm = (xm << (32 - (SP_MBITS - xe))) >> (32 - (SP_MBITS - xe));
 if (xm == 0)
  return ieee754sp_zero(xs);

 while ((xm >> SP_MBITS) == 0) {
  xm <<= 1;
  xe--;
 }
 return buildsp(xs, xe + SP_EBIAS, xm & ~SP_HIDDEN_BIT);
}
