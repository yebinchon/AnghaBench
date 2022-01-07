
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int ieee754sp ;
typedef int ieee754dp ;


 int CLEARCX ;
 int COMPXSP ;
 scalar_t__ DP_EBIAS ;
 int DP_EMAX ;
 int DP_MBITS ;
 int EXPLODEXSP ;
 int FLUSHXSP ;






 int IEEE754_INVALID_OPERATION ;
 int SETCX (int ) ;
 int SP_HIDDEN_BIT ;
 int SP_MBITS ;
 int builddp (int ,scalar_t__,int) ;
 int ieee754dp_indef () ;
 int ieee754dp_inf (int ) ;
 int ieee754dp_nanxcpt (int ,char*,...) ;
 int ieee754dp_zero (int ) ;
 int xc ;
 scalar_t__ xe ;
 int xm ;
 int xs ;

ieee754dp ieee754dp_fsp(ieee754sp x)
{
 COMPXSP;

 EXPLODEXSP;

 CLEARCX;

 FLUSHXSP;

 switch (xc) {
 case 129:
  SETCX(IEEE754_INVALID_OPERATION);
  return ieee754dp_nanxcpt(ieee754dp_indef(), "fsp");
 case 130:
  return ieee754dp_nanxcpt(builddp(xs,
       DP_EMAX + 1 + DP_EBIAS,
       ((u64) xm
        << (DP_MBITS -
            SP_MBITS))), "fsp",
      x);
 case 132:
  return ieee754dp_inf(xs);
 case 128:
  return ieee754dp_zero(xs);
 case 133:

  while ((xm >> SP_MBITS) == 0) {
   xm <<= 1;
   xe--;
  }
  break;
 case 131:
  break;
 }





 xm &= ~SP_HIDDEN_BIT;

 return builddp(xs, xe + DP_EBIAS,
         (u64) xm << (DP_MBITS - SP_MBITS));
}
