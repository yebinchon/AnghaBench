
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int sgl_floating_point ;
typedef scalar_t__ boolean ;


 scalar_t__ FALSE ;
 int INEXACTEXCEPTION ;
 int INVALIDEXCEPTION ;
 int Int_from_sgl_mantissa (unsigned int,int) ;
 scalar_t__ Is_inexacttrap_enabled () ;
 scalar_t__ Is_invalidtrap_enabled () ;
 int NOEXCEPTION ;



 int Rounding_mode () ;
 int SGL_BIAS ;
 int SGL_FX_MAX_EXP ;
 int Set_inexactflag () ;
 int Set_invalidflag () ;
 int Sgl_all (unsigned int) ;
 int Sgl_clear_signexponent_set_hidden (unsigned int) ;
 int Sgl_exponent (unsigned int) ;
 scalar_t__ Sgl_isinexact_to_fix (unsigned int,int) ;
 scalar_t__ Sgl_isnotzero_exponentmantissa (unsigned int) ;
 scalar_t__ Sgl_isnotzero_mantissa (unsigned int) ;
 int Sgl_isone_lowmantissa (unsigned int) ;
 int Sgl_isone_roundbit (unsigned int,int) ;
 scalar_t__ Sgl_isone_sign (unsigned int) ;
 int Sgl_isone_stickybit (unsigned int,int) ;
 scalar_t__ Sgl_iszero_sign (unsigned int) ;
 scalar_t__ TRUE ;

int
sgl_to_sgl_fcnvfx(
      sgl_floating_point *srcptr,
      sgl_floating_point *nullptr,
      int *dstptr,
      sgl_floating_point *status)
{
 register unsigned int src, temp;
 register int src_exponent, result;
 register boolean inexact = FALSE;

 src = *srcptr;
 src_exponent = Sgl_exponent(src) - SGL_BIAS;




 if (src_exponent > SGL_FX_MAX_EXP) {

  if ((src_exponent > SGL_FX_MAX_EXP + 1) ||
  Sgl_isnotzero_mantissa(src) || Sgl_iszero_sign(src)) {
                        if (Sgl_iszero_sign(src)) result = 0x7fffffff;
                        else result = 0x80000000;

                 if (Is_invalidtrap_enabled()) {
                            return(INVALIDEXCEPTION);
                        }
                        Set_invalidflag();
   *dstptr = result;
   return(NOEXCEPTION);
         }
 }



 if (src_exponent >= 0) {
  temp = src;
  Sgl_clear_signexponent_set_hidden(temp);
  Int_from_sgl_mantissa(temp,src_exponent);
  if (Sgl_isone_sign(src)) result = -Sgl_all(temp);
  else result = Sgl_all(temp);


  if (Sgl_isinexact_to_fix(src,src_exponent)) {
   inexact = TRUE;

   switch (Rounding_mode()) {
   case 128:
        if (Sgl_iszero_sign(src)) result++;
        break;
   case 130:
        if (Sgl_isone_sign(src)) result--;
        break;
   case 129:
        if (Sgl_isone_roundbit(src,src_exponent)) {
           if (Sgl_isone_stickybit(src,src_exponent)
    || (Sgl_isone_lowmantissa(temp)))
              if (Sgl_iszero_sign(src)) result++;
              else result--;
        }
   }
  }
 }
 else {
  result = 0;


  if (Sgl_isnotzero_exponentmantissa(src)) {
   inexact = TRUE;

   switch (Rounding_mode()) {
   case 128:
        if (Sgl_iszero_sign(src)) result++;
        break;
   case 130:
        if (Sgl_isone_sign(src)) result--;
        break;
   case 129:
        if (src_exponent == -1)
           if (Sgl_isnotzero_mantissa(src))
              if (Sgl_iszero_sign(src)) result++;
              else result--;
   }
  }
 }
 *dstptr = result;
 if (inexact) {
  if (Is_inexacttrap_enabled()) return(INEXACTEXCEPTION);
  else Set_inexactflag();
 }
 return(NOEXCEPTION);
}
