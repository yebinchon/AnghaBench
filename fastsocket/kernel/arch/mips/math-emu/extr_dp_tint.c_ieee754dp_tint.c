
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int ieee754dp ;
struct TYPE_2__ {int rm; } ;


 int CLEARCX ;
 int COMPXDP ;
 int DP_MBITS ;
 int EXPLODEXDP ;
 int FLUSHXDP ;






 int IEEE754_INEXACT ;
 int IEEE754_INVALID_OPERATION ;




 int SETCX (int ) ;
 TYPE_1__ ieee754_csr ;
 int ieee754si_indef () ;
 int ieee754si_xcpt (int ,char*,int ) ;
 int xc ;
 int xe ;
 int xm ;
 scalar_t__ xs ;

int ieee754dp_tint(ieee754dp x)
{
 COMPXDP;

 CLEARCX;

 EXPLODEXDP;
 FLUSHXDP;

 switch (xc) {
 case 133:
 case 134:
 case 136:
  SETCX(IEEE754_INVALID_OPERATION);
  return ieee754si_xcpt(ieee754si_indef(), "dp_tint", x);
 case 132:
  return 0;
 case 137:
 case 135:
  break;
 }
 if (xe > 31) {


  SETCX(IEEE754_INVALID_OPERATION);
  return ieee754si_xcpt(ieee754si_indef(), "dp_tint", x);
 }

 if (xe > DP_MBITS) {
  xm <<= xe - DP_MBITS;
 } else if (xe < DP_MBITS) {
  u64 residue;
  int round;
  int sticky;
  int odd;

  if (xe < -1) {
   residue = xm;
   round = 0;
   sticky = residue != 0;
   xm = 0;
  }
  else {
   residue = xm << (64 - DP_MBITS + xe);
   round = (residue >> 63) != 0;
   sticky = (residue << 1) != 0;
   xm >>= DP_MBITS - xe;
  }


  odd = (xm & 0x1) != 0x0;
  switch (ieee754_csr.rm) {
  case 130:
   if (round && (sticky || odd))
    xm++;
   break;
  case 128:
   break;
  case 129:
   if ((round || sticky) && !xs)
    xm++;
   break;
  case 131:
   if ((round || sticky) && xs)
    xm++;
   break;
  }

  if ((xm >> 31) != 0 && (xs == 0 || xm != 0x80000000)) {

   SETCX(IEEE754_INVALID_OPERATION);
   return ieee754si_xcpt(ieee754si_indef(), "dp_tint", x);
  }
  if (round || sticky)
   SETCX(IEEE754_INEXACT);
 }
 if (xs)
  return -xm;
 else
  return xm;
}
