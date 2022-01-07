
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee754dp ;


 int CLEARCX ;
 int COMPXDP ;
 scalar_t__ DP_EBIAS ;
 scalar_t__ DP_HIDDEN_BIT ;
 scalar_t__ DP_MBITS ;
 int EXPLODEXDP ;






 int builddp (int ,scalar_t__,scalar_t__) ;
 int ieee754dp_zero (int ) ;
 int xc ;
 scalar_t__ xe ;
 scalar_t__ xm ;
 int xs ;

ieee754dp ieee754dp_modf(ieee754dp x, ieee754dp * ip)
{
 COMPXDP;

 CLEARCX;

 EXPLODEXDP;

 switch (xc) {
 case 129:
 case 130:
 case 132:
 case 128:
  *ip = x;
  return x;
 case 133:

  *ip = ieee754dp_zero(xs);
  return x;
 case 131:
  break;
 }
 if (xe < 0) {
  *ip = ieee754dp_zero(xs);
  return x;
 }
 if (xe >= DP_MBITS) {
  *ip = x;
  return ieee754dp_zero(xs);
 }


 *ip = builddp(xs, xe + DP_EBIAS,
        ((xm >> (DP_MBITS - xe)) << (DP_MBITS - xe)) &
        ~DP_HIDDEN_BIT);




 xm = (xm << (64 - (DP_MBITS - xe))) >> (64 - (DP_MBITS - xe));
 if (xm == 0)
  return ieee754dp_zero(xs);

 while ((xm >> DP_MBITS) == 0) {
  xm <<= 1;
  xe--;
 }
 return builddp(xs, xe + DP_EBIAS, xm & ~DP_HIDDEN_BIT);
}
