
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dbl_floating_point ;
typedef scalar_t__ boolean ;


 int DBL_BIAS ;
 int DBL_INFINITY_EXPONENT ;
 int DBL_P ;
 int Dbl_clear_exponent_set_hidden (unsigned int) ;
 int Dbl_copyfromptr (int *,unsigned int,unsigned int) ;
 int Dbl_copytoptr (unsigned int,unsigned int,int *) ;
 int Dbl_exponent (unsigned int) ;
 int Dbl_increment (unsigned int,unsigned int) ;
 scalar_t__ Dbl_isinexact_to_fix (unsigned int,unsigned int,int) ;
 scalar_t__ Dbl_isnotzero_exponentmantissa (unsigned int,unsigned int) ;
 int Dbl_isnotzero_mantissa (unsigned int,unsigned int) ;
 scalar_t__ Dbl_isone_hiddenoverflow (unsigned int) ;
 int Dbl_isone_lowmantissap2 (unsigned int) ;
 int Dbl_isone_roundbit (unsigned int,unsigned int,int) ;
 int Dbl_isone_sign (unsigned int) ;
 scalar_t__ Dbl_isone_signaling (unsigned int) ;
 int Dbl_isone_stickybit (unsigned int,unsigned int,int) ;
 int Dbl_iszero_sign (unsigned int) ;
 int Dbl_leftshift (unsigned int,unsigned int,int) ;
 int Dbl_rightshift (unsigned int,unsigned int,int) ;
 int Dbl_set_exponent (unsigned int,int) ;
 int Dbl_set_quiet (unsigned int) ;
 int Dbl_setzero_exponentmantissa (unsigned int,unsigned int) ;
 scalar_t__ FALSE ;
 int INEXACTEXCEPTION ;
 int INVALIDEXCEPTION ;
 scalar_t__ Is_inexacttrap_enabled () ;
 scalar_t__ Is_invalidtrap_enabled () ;
 int NOEXCEPTION ;



 int Rounding_mode () ;
 int Set_inexactflag () ;
 int Set_invalidflag () ;
 scalar_t__ TRUE ;

int
dbl_frnd(
 dbl_floating_point *srcptr,
 unsigned int *nullptr,
 dbl_floating_point *dstptr,
 unsigned int *status)
{
 register unsigned int srcp1, srcp2, resultp1, resultp2;
 register int src_exponent;
 register boolean inexact = FALSE;

 Dbl_copyfromptr(srcptr,srcp1,srcp2);



        if ((src_exponent = Dbl_exponent(srcp1)) == DBL_INFINITY_EXPONENT) {



                if (Dbl_isone_signaling(srcp1)) {

                        if (Is_invalidtrap_enabled()) return(INVALIDEXCEPTION);

                        Set_invalidflag();
                        Dbl_set_quiet(srcp1);
                }



                Dbl_copytoptr(srcp1,srcp2,dstptr);
                return(NOEXCEPTION);
        }



 if ((src_exponent -= DBL_BIAS) >= DBL_P - 1) {
  Dbl_copytoptr(srcp1,srcp2,dstptr);
  return(NOEXCEPTION);
 }



 if (src_exponent >= 0) {
  Dbl_clear_exponent_set_hidden(srcp1);
  resultp1 = srcp1;
  resultp2 = srcp2;
  Dbl_rightshift(resultp1,resultp2,(DBL_P-1) - (src_exponent));

  if (Dbl_isinexact_to_fix(srcp1,srcp2,src_exponent)) {
   inexact = TRUE;

   switch (Rounding_mode()) {
   case 128:
        if (Dbl_iszero_sign(srcp1))
    Dbl_increment(resultp1,resultp2);
        break;
   case 130:
        if (Dbl_isone_sign(srcp1))
    Dbl_increment(resultp1,resultp2);
        break;
   case 129:
        if (Dbl_isone_roundbit(srcp1,srcp2,src_exponent))
         if (Dbl_isone_stickybit(srcp1,srcp2,src_exponent)
      || (Dbl_isone_lowmantissap2(resultp2)))
     Dbl_increment(resultp1,resultp2);
   }
  }
  Dbl_leftshift(resultp1,resultp2,(DBL_P-1) - (src_exponent));
  if (Dbl_isone_hiddenoverflow(resultp1))
   Dbl_set_exponent(resultp1,src_exponent + (DBL_BIAS+1));
  else Dbl_set_exponent(resultp1,src_exponent + DBL_BIAS);
 }
 else {
  resultp1 = srcp1;
  Dbl_setzero_exponentmantissa(resultp1,resultp2);

  if (Dbl_isnotzero_exponentmantissa(srcp1,srcp2)) {
   inexact = TRUE;

   switch (Rounding_mode()) {
   case 128:
        if (Dbl_iszero_sign(srcp1))
    Dbl_set_exponent(resultp1,DBL_BIAS);
        break;
   case 130:
        if (Dbl_isone_sign(srcp1))
    Dbl_set_exponent(resultp1,DBL_BIAS);
        break;
   case 129:
        if (src_exponent == -1)
           if (Dbl_isnotzero_mantissa(srcp1,srcp2))
       Dbl_set_exponent(resultp1,DBL_BIAS);
   }
  }
 }
 Dbl_copytoptr(resultp1,resultp2,dstptr);
 if (inexact) {
  if (Is_inexacttrap_enabled()) return(INEXACTEXCEPTION);
  else Set_inexactflag();
 }
 return(NOEXCEPTION);
}
