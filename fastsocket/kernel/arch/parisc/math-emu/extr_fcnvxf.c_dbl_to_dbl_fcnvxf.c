
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dbl_integer ;
typedef int dbl_floating_point ;


 scalar_t__ DBL_BIAS ;
 int DBL_EXP_LENGTH ;
 int Dbl_copytoptr (unsigned int,unsigned int,int *) ;
 int Dbl_increment (unsigned int,unsigned int) ;
 int Dbl_isone_sign (unsigned int) ;
 int Dbl_iszero_sign (unsigned int) ;
 int Dbl_roundnearest_from_dint (unsigned int,unsigned int,unsigned int) ;
 int Dbl_set_exponent (unsigned int,scalar_t__) ;
 int Dbl_set_mantissap1 (unsigned int,int) ;
 int Dbl_setone_sign (unsigned int) ;
 int Dbl_setzero (unsigned int,unsigned int) ;
 int Dbl_setzero_sign (unsigned int) ;
 int Dint_copyfromptr (int *,int,unsigned int) ;
 scalar_t__ Dint_isinexact_to_dbl (unsigned int) ;
 int Dint_negate (int,unsigned int) ;
 int Find_ms_one_bit (int,int) ;
 int INEXACTEXCEPTION ;
 scalar_t__ Is_inexacttrap_enabled () ;
 int NOEXCEPTION ;



 int Rounding_mode () ;
 int Set_inexactflag () ;
 int Shiftdouble (int,unsigned int,int,unsigned int) ;
 int Variable_shift_double (int,unsigned int,int,int) ;

int
dbl_to_dbl_fcnvxf(
      dbl_integer *srcptr,
      unsigned int *nullptr,
      dbl_floating_point *dstptr,
      unsigned int *status)
{
 register int srcp1, dst_exponent;
 register unsigned int srcp2, resultp1 = 0, resultp2 = 0;

 Dint_copyfromptr(srcptr,srcp1,srcp2);



 if (srcp1 < 0) {
  Dbl_setone_sign(resultp1);
  Dint_negate(srcp1,srcp2);
 }
 else {
  Dbl_setzero_sign(resultp1);

         if (srcp1 == 0 && srcp2 ==0) {
                 Dbl_setzero(resultp1,resultp2);
                 Dbl_copytoptr(resultp1,resultp2,dstptr);
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
 Dbl_set_mantissap1(resultp1, srcp1 >> (DBL_EXP_LENGTH-1));
 Shiftdouble(srcp1,srcp2,DBL_EXP_LENGTH-1,resultp2);
 Dbl_set_exponent(resultp1, (62+DBL_BIAS) - dst_exponent);


 if (Dint_isinexact_to_dbl(srcp2)) {
  switch (Rounding_mode()) {
   case 128:
    if (Dbl_iszero_sign(resultp1)) {
     Dbl_increment(resultp1,resultp2);
    }
    break;
   case 130:
    if (Dbl_isone_sign(resultp1)) {
     Dbl_increment(resultp1,resultp2);
    }
    break;
   case 129:
    Dbl_roundnearest_from_dint(srcp2,resultp1,
    resultp2);
  }
  if (Is_inexacttrap_enabled()) {
   Dbl_copytoptr(resultp1,resultp2,dstptr);
   return(INEXACTEXCEPTION);
  }
  else Set_inexactflag();
 }
 Dbl_copytoptr(resultp1,resultp2,dstptr);
 return(NOEXCEPTION);
}
