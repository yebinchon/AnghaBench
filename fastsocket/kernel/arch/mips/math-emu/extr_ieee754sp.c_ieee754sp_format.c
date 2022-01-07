
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ieee754sp ;
struct TYPE_2__ {int rm; int mx; scalar_t__ nod; } ;


 int IEEE754_INEXACT ;
 int IEEE754_OVERFLOW ;




 int IEEE754_UNDERFLOW ;
 int SETCX (int) ;
 int SPXSRSXn (int) ;
 scalar_t__ SP_EBIAS ;
 int SP_EMAX ;
 int SP_EMIN ;
 int SP_HIDDEN_BIT ;
 int SP_MBIT (int) ;
 int SP_MBITS ;
 int assert (unsigned int) ;
 int buildsp (int,scalar_t__,unsigned int) ;
 int get_rounding (int,unsigned int) ;
 TYPE_1__ ieee754_csr ;
 int ieee754sp_inf (int) ;
 int ieee754sp_max (int) ;
 int ieee754sp_min (int) ;
 int ieee754sp_zero (int) ;

ieee754sp ieee754sp_format(int sn, int xe, unsigned xm)
{
 assert(xm);

 assert((xm >> (SP_MBITS + 1 + 3)) == 0);
 assert(xm & (SP_HIDDEN_BIT << 3));

 if (xe < SP_EMIN) {

  int es = SP_EMIN - xe;

  if (ieee754_csr.nod) {
   SETCX(IEEE754_UNDERFLOW);
   SETCX(IEEE754_INEXACT);

   switch(ieee754_csr.rm) {
   case 130:
    return ieee754sp_zero(sn);
   case 128:
    return ieee754sp_zero(sn);
   case 129:
    if(sn == 0)
     return ieee754sp_min(0);
    else
     return ieee754sp_zero(1);
   case 131:
    if(sn == 0)
     return ieee754sp_zero(0);
    else
     return ieee754sp_min(1);
   }
  }

  if (xe == SP_EMIN - 1
    && get_rounding(sn, xm) >> (SP_MBITS + 1 + 3))
  {

   SETCX(IEEE754_INEXACT);
   xm = get_rounding(sn, xm);
   xm >>= 1;

   xm &= ~(SP_MBIT(3) - 1);
   xe++;
  }
  else {


   SPXSRSXn(es);
   assert((xm & (SP_HIDDEN_BIT << 3)) == 0);
   assert(xe == SP_EMIN);
  }
 }
 if (xm & (SP_MBIT(3) - 1)) {
  SETCX(IEEE754_INEXACT);
  if ((xm & (SP_HIDDEN_BIT << 3)) == 0) {
   SETCX(IEEE754_UNDERFLOW);
  }



  xm = get_rounding(sn, xm);


  if (xm >> (SP_MBITS + 1 + 3)) {

   xm >>= 1;
   xe++;
  }
 }

 xm >>= 3;

 assert((xm >> (SP_MBITS + 1)) == 0);
 assert(xe >= SP_EMIN);

 if (xe > SP_EMAX) {
  SETCX(IEEE754_OVERFLOW);
  SETCX(IEEE754_INEXACT);

  switch (ieee754_csr.rm) {
  case 130:
   return ieee754sp_inf(sn);
  case 128:
   return ieee754sp_max(sn);
  case 129:
   if (sn == 0)
    return ieee754sp_inf(0);
   else
    return ieee754sp_max(1);
  case 131:
   if (sn == 0)
    return ieee754sp_max(0);
   else
    return ieee754sp_inf(1);
  }
 }


 if ((xm & SP_HIDDEN_BIT) == 0) {

  assert(xe == SP_EMIN);
  if (ieee754_csr.mx & IEEE754_UNDERFLOW)
   SETCX(IEEE754_UNDERFLOW);
  return buildsp(sn, SP_EMIN - 1 + SP_EBIAS, xm);
 } else {
  assert((xm >> (SP_MBITS + 1)) == 0);
  assert(xm & SP_HIDDEN_BIT);

  return buildsp(sn, xe + SP_EBIAS, xm & ~SP_HIDDEN_BIT);
 }
}
