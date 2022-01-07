
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int sgl_floating_point ;
typedef int dbl_integer ;


 int Dint_copyfromptr (int *,int,unsigned int) ;
 scalar_t__ Dint_isinexact_to_sgl (int,unsigned int) ;
 int Dint_negate (int,unsigned int) ;
 int Find_ms_one_bit (int,int) ;
 int INEXACTEXCEPTION ;
 scalar_t__ Is_inexacttrap_enabled () ;
 int NOEXCEPTION ;



 int Rounding_mode () ;
 scalar_t__ SGL_BIAS ;
 int SGL_EXP_LENGTH ;
 int Set_inexactflag () ;
 int Sgl_increment (unsigned int) ;
 int Sgl_isone_sign (unsigned int) ;
 int Sgl_iszero_sign (unsigned int) ;
 int Sgl_roundnearest_from_dint (int,unsigned int,unsigned int) ;
 int Sgl_set_exponent (unsigned int,scalar_t__) ;
 int Sgl_set_mantissa (unsigned int,int) ;
 int Sgl_setone_sign (unsigned int) ;
 int Sgl_setzero (unsigned int) ;
 int Sgl_setzero_sign (unsigned int) ;
 int Variable_shift_double (int,unsigned int,int,int) ;

int
dbl_to_sgl_fcnvxf(
   dbl_integer *srcptr,
   unsigned int *nullptr,
   sgl_floating_point *dstptr,
   unsigned int *status)
{
 int dst_exponent, srcp1;
 unsigned int result = 0, srcp2;

 Dint_copyfromptr(srcptr,srcp1,srcp2);



 if (srcp1 < 0) {
  Sgl_setone_sign(result);
  Dint_negate(srcp1,srcp2);
 }
 else {
  Sgl_setzero_sign(result);

         if (srcp1 == 0 && srcp2 == 0) {
                 Sgl_setzero(result);
                 *dstptr = result;
                 return(NOEXCEPTION);
  }
        }



 dst_exponent = 16;
 if (srcp1 == 0) {





  Find_ms_one_bit(srcp2,dst_exponent);

  if (dst_exponent >= 0) {
   srcp1 = srcp2 << dst_exponent;
   srcp2 = 0;
  }
  else {
   srcp1 = srcp2 >> 1;
   srcp2 <<= 31;
  }




  dst_exponent += 32;
 }
 else {






  Find_ms_one_bit(srcp1,dst_exponent);

  if (dst_exponent > 0) {
   Variable_shift_double(srcp1,srcp2,(32-dst_exponent),
    srcp1);
   srcp2 <<= dst_exponent;
  }





  else srcp1 >>= -(dst_exponent);
 }
 Sgl_set_mantissa(result, srcp1 >> SGL_EXP_LENGTH - 1);
 Sgl_set_exponent(result, (62+SGL_BIAS) - dst_exponent);


 if (Dint_isinexact_to_sgl(srcp1,srcp2)) {
  switch (Rounding_mode()) {
   case 128:
    if (Sgl_iszero_sign(result))
     Sgl_increment(result);
    break;
   case 130:
    if (Sgl_isone_sign(result))
     Sgl_increment(result);
    break;
   case 129:
    Sgl_roundnearest_from_dint(srcp1,srcp2,result);
  }
  if (Is_inexacttrap_enabled()) {
   *dstptr = result;
   return(INEXACTEXCEPTION);
  }
  else Set_inexactflag();
 }
 *dstptr = result;
 return(NOEXCEPTION);
}
