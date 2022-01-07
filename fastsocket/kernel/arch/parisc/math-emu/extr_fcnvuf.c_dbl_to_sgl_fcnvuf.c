
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int sgl_floating_point ;
typedef int dbl_unsigned ;


 int Duint_copyfromptr (int *,unsigned int,unsigned int) ;
 scalar_t__ Duint_isinexact_to_sgl (unsigned int,unsigned int) ;
 int Find_ms_one_bit (unsigned int,int) ;
 int INEXACTEXCEPTION ;
 scalar_t__ Is_inexacttrap_enabled () ;
 int NOEXCEPTION ;



 int Rounding_mode () ;
 scalar_t__ SGL_BIAS ;
 unsigned int SGL_EXP_LENGTH ;
 int Set_inexactflag () ;
 int Sgl_increment (unsigned int) ;
 int Sgl_roundnearest_from_duint (unsigned int,unsigned int,unsigned int) ;
 int Sgl_set_exponent (unsigned int,scalar_t__) ;
 int Sgl_set_mantissa (unsigned int,unsigned int) ;
 int Sgl_setzero (unsigned int) ;
 int Variable_shift_double (unsigned int,unsigned int,int,unsigned int) ;

int
dbl_to_sgl_fcnvuf(
   dbl_unsigned *srcptr,
   unsigned int *nullptr,
   sgl_floating_point *dstptr,
   unsigned int *status)
{
 int dst_exponent;
 unsigned int srcp1, srcp2, result = 0;

 Duint_copyfromptr(srcptr,srcp1,srcp2);


 if (srcp1 == 0 && srcp2 == 0) {
         Sgl_setzero(result);
         *dstptr = result;
         return(NOEXCEPTION);
 }



 dst_exponent = 16;
 if (srcp1 == 0) {





  Find_ms_one_bit(srcp2,dst_exponent);

  srcp1 = srcp2 << dst_exponent+1;
  srcp2 = 0;




  dst_exponent += 32;
 }
 else {






  Find_ms_one_bit(srcp1,dst_exponent);

  if (dst_exponent >= 0) {
   Variable_shift_double(srcp1,srcp2,(31-dst_exponent),
    srcp1);
   srcp2 <<= dst_exponent+1;
  }
 }
 Sgl_set_mantissa(result, srcp1 >> SGL_EXP_LENGTH);
 Sgl_set_exponent(result, (62+SGL_BIAS) - dst_exponent);


 if (Duint_isinexact_to_sgl(srcp1,srcp2)) {
  switch (Rounding_mode()) {
   case 128:
    Sgl_increment(result);
    break;
   case 130:
    break;
   case 129:
    Sgl_roundnearest_from_duint(srcp1,srcp2,result);
    break;
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
