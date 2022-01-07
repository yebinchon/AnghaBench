
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int s64 ;
struct TYPE_6__ {int bits; } ;
typedef TYPE_1__ ieee754dp ;


 int CLEARCX ;
 int COMPXDP ;
 int COMPYDP ;
 int DP_SIGN_BIT ;
 int EXPLODEXDP ;
 int EXPLODEYDP ;
 int FLUSHXDP ;
 int FLUSHYDP ;
 int IEEE754_CEQ ;
 int IEEE754_CGT ;
 scalar_t__ IEEE754_CLASS_SNAN ;
 int IEEE754_CLT ;
 int IEEE754_CUN ;
 int IEEE754_INVALID_OPERATION ;
 scalar_t__ SETANDTESTCX (int ) ;
 int SETCX (int ) ;
 scalar_t__ ieee754dp_isnan (TYPE_1__) ;
 int ieee754si_xcpt (int ,char*,TYPE_1__) ;
 scalar_t__ xc ;
 scalar_t__ yc ;

int ieee754dp_cmp(ieee754dp x, ieee754dp y, int cmp, int sig)
{
 COMPXDP;
 COMPYDP;

 EXPLODEXDP;
 EXPLODEYDP;
 FLUSHXDP;
 FLUSHYDP;
 CLEARCX;

 if (ieee754dp_isnan(x) || ieee754dp_isnan(y)) {
  if (sig || xc == IEEE754_CLASS_SNAN || yc == IEEE754_CLASS_SNAN)
   SETCX(IEEE754_INVALID_OPERATION);
  if (cmp & IEEE754_CUN)
   return 1;
  if (cmp & (IEEE754_CLT | IEEE754_CGT)) {
   if (sig && SETANDTESTCX(IEEE754_INVALID_OPERATION))
    return ieee754si_xcpt(0, "fcmpf", x);
  }
  return 0;
 } else {
  s64 vx = x.bits;
  s64 vy = y.bits;

  if (vx < 0)
   vx = -vx ^ DP_SIGN_BIT;
  if (vy < 0)
   vy = -vy ^ DP_SIGN_BIT;

  if (vx < vy)
   return (cmp & IEEE754_CLT) != 0;
  else if (vx == vy)
   return (cmp & IEEE754_CEQ) != 0;
  else
   return (cmp & IEEE754_CGT) != 0;
 }
}
