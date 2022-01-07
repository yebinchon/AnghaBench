
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int ieee754dp ;
struct TYPE_2__ {int rm; int mx; scalar_t__ nod; } ;


 scalar_t__ DP_EBIAS ;
 int DP_EMAX ;
 int DP_EMIN ;
 int DP_HIDDEN_BIT ;
 int DP_MBIT (int) ;
 int DP_MBITS ;
 int IEEE754_INEXACT ;
 int IEEE754_OVERFLOW ;




 int IEEE754_UNDERFLOW ;
 int SETCX (int) ;
 int XDPSRS (int,int) ;
 int assert (int) ;
 int builddp (int,scalar_t__,int) ;
 int get_rounding (int,int) ;
 TYPE_1__ ieee754_csr ;
 int ieee754dp_inf (int) ;
 int ieee754dp_max (int) ;
 int ieee754dp_min (int) ;
 int ieee754dp_zero (int) ;

ieee754dp ieee754dp_format(int sn, int xe, u64 xm)
{
 assert(xm);

 assert((xm >> (DP_MBITS + 1 + 3)) == 0);
 assert(xm & (DP_HIDDEN_BIT << 3));

 if (xe < DP_EMIN) {

  int es = DP_EMIN - xe;

  if (ieee754_csr.nod) {
   SETCX(IEEE754_UNDERFLOW);
   SETCX(IEEE754_INEXACT);

   switch(ieee754_csr.rm) {
   case 130:
    return ieee754dp_zero(sn);
   case 128:
    return ieee754dp_zero(sn);
   case 129:
    if(sn == 0)
     return ieee754dp_min(0);
    else
     return ieee754dp_zero(1);
   case 131:
    if(sn == 0)
     return ieee754dp_zero(0);
    else
     return ieee754dp_min(1);
   }
  }

  if (xe == DP_EMIN - 1
    && get_rounding(sn, xm) >> (DP_MBITS + 1 + 3))
  {

   SETCX(IEEE754_INEXACT);
   xm = get_rounding(sn, xm);
   xm >>= 1;

   xm &= ~(DP_MBIT(3) - 1);
   xe++;
  }
  else {


   xm = XDPSRS(xm, es);
   xe += es;
   assert((xm & (DP_HIDDEN_BIT << 3)) == 0);
   assert(xe == DP_EMIN);
  }
 }
 if (xm & (DP_MBIT(3) - 1)) {
  SETCX(IEEE754_INEXACT);
  if ((xm & (DP_HIDDEN_BIT << 3)) == 0) {
   SETCX(IEEE754_UNDERFLOW);
  }



  xm = get_rounding(sn, xm);


  if (xm >> (DP_MBITS + 3 + 1)) {

   xm >>= 1;
   xe++;
  }
 }

 xm >>= 3;

 assert((xm >> (DP_MBITS + 1)) == 0);
 assert(xe >= DP_EMIN);

 if (xe > DP_EMAX) {
  SETCX(IEEE754_OVERFLOW);
  SETCX(IEEE754_INEXACT);

  switch (ieee754_csr.rm) {
  case 130:
   return ieee754dp_inf(sn);
  case 128:
   return ieee754dp_max(sn);
  case 129:
   if (sn == 0)
    return ieee754dp_inf(0);
   else
    return ieee754dp_max(1);
  case 131:
   if (sn == 0)
    return ieee754dp_max(0);
   else
    return ieee754dp_inf(1);
  }
 }


 if ((xm & DP_HIDDEN_BIT) == 0) {

  assert(xe == DP_EMIN);
  if (ieee754_csr.mx & IEEE754_UNDERFLOW)
   SETCX(IEEE754_UNDERFLOW);
  return builddp(sn, DP_EMIN - 1 + DP_EBIAS, xm);
 } else {
  assert((xm >> (DP_MBITS + 1)) == 0);
  assert(xm & DP_HIDDEN_BIT);

  return builddp(sn, xe + DP_EBIAS, xm & ~DP_HIDDEN_BIT);
 }
}
