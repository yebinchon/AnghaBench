
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dbl_floating_point ;


 int DBL_BIAS ;
 int Dbl_clear_signexponent_set_hidden (unsigned int) ;
 int Dbl_copyfromptr (int *,unsigned int,unsigned int) ;
 int Dbl_exponent (unsigned int) ;
 scalar_t__ Dbl_isinexact_to_unsigned (unsigned int,unsigned int,int) ;
 scalar_t__ Dbl_isnotzero_exponentmantissa (unsigned int,unsigned int) ;
 scalar_t__ Dbl_isone_sign (unsigned int) ;
 int INEXACTEXCEPTION ;
 int INVALIDEXCEPTION ;
 scalar_t__ Is_inexacttrap_enabled () ;
 scalar_t__ Is_invalidtrap_enabled () ;
 int NOEXCEPTION ;
 int SGL_FX_MAX_EXP ;
 int Set_inexactflag () ;
 int Set_invalidflag () ;
 int Suint_from_dbl_mantissa (unsigned int,unsigned int,int,unsigned int) ;

int
dbl_to_sgl_fcnvfut (dbl_floating_point * srcptr, unsigned int *nullptr,
      unsigned int *dstptr, unsigned int *status)
{
 register unsigned int srcp1, srcp2, result;
 register int src_exponent;

 Dbl_copyfromptr(srcptr,srcp1,srcp2);
 src_exponent = Dbl_exponent(srcp1) - DBL_BIAS;




 if (src_exponent > SGL_FX_MAX_EXP + 1) {
  if (Dbl_isone_sign(srcp1)) {
   result = 0;
  } else {
   result = 0xffffffff;
  }
  if (Is_invalidtrap_enabled()) {
   return(INVALIDEXCEPTION);
  }
  Set_invalidflag();
  *dstptr = result;
  return(NOEXCEPTION);
 }



 if (src_exponent >= 0) {




  if (Dbl_isone_sign(srcp1)) {
   result = 0;
   if (Is_invalidtrap_enabled()) {
    return(INVALIDEXCEPTION);
   }
   Set_invalidflag();
   *dstptr = result;
   return(NOEXCEPTION);
  }
  Dbl_clear_signexponent_set_hidden(srcp1);
  Suint_from_dbl_mantissa(srcp1,srcp2,src_exponent,result);
  *dstptr = result;


  if (Dbl_isinexact_to_unsigned(srcp1,srcp2,src_exponent)) {
   if (Is_inexacttrap_enabled()) return(INEXACTEXCEPTION);
   else Set_inexactflag();
  }
 }
 else {
  *dstptr = 0;


  if (Dbl_isnotzero_exponentmantissa(srcp1,srcp2)) {
   if (Is_inexacttrap_enabled()) return(INEXACTEXCEPTION);
   else Set_inexactflag();
  }
 }
 return(NOEXCEPTION);
}
