
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int ieee754sp ;
typedef int ieee754dp ;
struct TYPE_2__ {int rm; } ;


 int CLEARCX ;
 int COMPXDP ;
 int DP_MBITS ;
 int EXPLODEXDP ;
 int FLUSHXDP ;






 int IEEE754_INEXACT ;
 int IEEE754_INVALID_OPERATION ;
 int IEEE754_RD ;
 int IEEE754_RU ;
 int IEEE754_UNDERFLOW ;
 int SETCX (int ) ;
 int SPNORMRET1 (int ,int ,int,char*,int ) ;
 scalar_t__ SP_EBIAS ;
 int SP_EMAX ;
 int SP_MBITS ;
 int buildsp (int ,scalar_t__,int) ;
 TYPE_1__ ieee754_csr ;
 int ieee754sp_indef () ;
 int ieee754sp_inf (int ) ;
 int ieee754sp_isnan (int ) ;
 int ieee754sp_mind (int ) ;
 int ieee754sp_nanxcpt (int ,char*,...) ;
 int ieee754sp_xcpt (int ,char*,int ) ;
 int ieee754sp_zero (int ) ;
 int xc ;
 int xe ;
 int xm ;
 int xs ;

ieee754sp ieee754sp_fdp(ieee754dp x)
{
 COMPXDP;
 ieee754sp nan;

 EXPLODEXDP;

 CLEARCX;

 FLUSHXDP;

 switch (xc) {
 case 129:
  SETCX(IEEE754_INVALID_OPERATION);
  return ieee754sp_nanxcpt(ieee754sp_indef(), "fdp");
 case 130:
  nan = buildsp(xs, SP_EMAX + 1 + SP_EBIAS, (u32)
    (xm >> (DP_MBITS - SP_MBITS)));
  if (!ieee754sp_isnan(nan))
   nan = ieee754sp_indef();
  return ieee754sp_nanxcpt(nan, "fdp", x);
 case 132:
  return ieee754sp_inf(xs);
 case 128:
  return ieee754sp_zero(xs);
 case 133:

  SETCX(IEEE754_UNDERFLOW);
  SETCX(IEEE754_INEXACT);
  if ((ieee754_csr.rm == IEEE754_RU && !xs) ||
    (ieee754_csr.rm == IEEE754_RD && xs))
   return ieee754sp_xcpt(ieee754sp_mind(xs), "fdp", x);
  return ieee754sp_xcpt(ieee754sp_zero(xs), "fdp", x);
 case 131:
  break;
 }

 {
  u32 rm;



  rm = (xm >> (DP_MBITS - (SP_MBITS + 3))) |
      ((xm << (64 - (DP_MBITS - (SP_MBITS + 3)))) != 0);

  SPNORMRET1(xs, xe, rm, "fdp", x);
 }
}
