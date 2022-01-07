
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int s64 ;
typedef int ieee754sp ;
struct TYPE_2__ {int rm; } ;


 int CLEARCX ;
 int COMPXDP ;
 int EXPLODEXSP ;
 int FLUSHXSP ;






 int IEEE754_INEXACT ;
 int IEEE754_INVALID_OPERATION ;




 int SETCX (int ) ;
 int SP_HIDDEN_BIT ;
 int SP_MBITS ;
 TYPE_1__ ieee754_csr ;
 int ieee754di_indef () ;
 int ieee754di_xcpt (int ,char*,int ) ;
 int xc ;
 int xe ;
 int xm ;
 scalar_t__ xs ;

s64 ieee754sp_tlong(ieee754sp x)
{
 COMPXDP;

 CLEARCX;

 EXPLODEXSP;
 FLUSHXSP;

 switch (xc) {
 case 133:
 case 134:
 case 136:
  SETCX(IEEE754_INVALID_OPERATION);
  return ieee754di_xcpt(ieee754di_indef(), "sp_tlong", x);
 case 132:
  return 0;
 case 137:
 case 135:
  break;
 }
 if (xe >= 63) {

  if (xe == 63 && xs && xm == SP_HIDDEN_BIT)
   return -0x8000000000000000LL;


  SETCX(IEEE754_INVALID_OPERATION);
  return ieee754di_xcpt(ieee754di_indef(), "sp_tlong", x);
 }

 if (xe > SP_MBITS) {
  xm <<= xe - SP_MBITS;
 } else if (xe < SP_MBITS) {
  u32 residue;
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
   residue = xm << (32 - SP_MBITS + xe);
   round = (residue >> 31) != 0;
   sticky = (residue << 1) != 0;
   xm >>= SP_MBITS - xe;
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
  if ((xm >> 63) != 0) {

   SETCX(IEEE754_INVALID_OPERATION);
   return ieee754di_xcpt(ieee754di_indef(), "sp_tlong", x);
  }
  if (round || sticky)
   SETCX(IEEE754_INEXACT);
 }
 if (xs)
  return -xm;
 else
  return xm;
}
