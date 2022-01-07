
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dbl_unsigned ;
typedef int dbl_floating_point ;
typedef scalar_t__ boolean ;


 int DBL_BIAS ;
 int DBL_FX_MAX_EXP ;
 int Dbl_clear_signexponent_set_hidden (unsigned int) ;
 int Dbl_copyfromptr (int *,unsigned int,unsigned int) ;
 int Dbl_exponent (unsigned int) ;
 scalar_t__ Dbl_isinexact_to_unsigned (unsigned int,unsigned int,int) ;
 scalar_t__ Dbl_isnotzero_exponentmantissa (unsigned int,unsigned int) ;
 int Dbl_isnotzero_mantissa (unsigned int,unsigned int) ;
 int Dbl_isone_roundbit (unsigned int,unsigned int,int) ;
 scalar_t__ Dbl_isone_sign (unsigned int) ;
 int Dbl_isone_stickybit (unsigned int,unsigned int,int) ;
 int Dbl_iszero_sign (unsigned int) ;
 int Duint_copytoptr (unsigned int,unsigned int,int *) ;
 int Duint_from_dbl_mantissa (unsigned int,unsigned int,int,unsigned int,unsigned int) ;
 int Duint_increment (unsigned int,unsigned int) ;
 int Duint_isone_lowp2 (unsigned int) ;
 int Duint_setzero (unsigned int,unsigned int) ;
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
dbl_to_dbl_fcnvfu (dbl_floating_point * srcptr, unsigned int *nullptr,
     dbl_unsigned * dstptr, unsigned int *status)
{
 register int src_exponent;
 register unsigned int srcp1, srcp2, resultp1, resultp2;
 register boolean inexact = FALSE;

 Dbl_copyfromptr(srcptr,srcp1,srcp2);
 src_exponent = Dbl_exponent(srcp1) - DBL_BIAS;




 if (src_exponent > DBL_FX_MAX_EXP + 1) {
  if (Dbl_isone_sign(srcp1)) {
   resultp1 = resultp2 = 0;
  } else {
   resultp1 = resultp2 = 0xffffffff;
  }
  if (Is_invalidtrap_enabled()) {
   return(INVALIDEXCEPTION);
  }
  Set_invalidflag();
      Duint_copytoptr(resultp1,resultp2,dstptr);
  return(NOEXCEPTION);
 }




 if (src_exponent >= 0) {




  if (Dbl_isone_sign(srcp1)) {
   resultp1 = resultp2 = 0;
   if (Is_invalidtrap_enabled()) {
    return(INVALIDEXCEPTION);
   }
   Set_invalidflag();
       Duint_copytoptr(resultp1,resultp2,dstptr);
   return(NOEXCEPTION);
  }
  Dbl_clear_signexponent_set_hidden(srcp1);
  Duint_from_dbl_mantissa(srcp1,srcp2,src_exponent,resultp1,
    resultp2);


  if (Dbl_isinexact_to_unsigned(srcp1,srcp2,src_exponent)) {
   inexact = TRUE;

   switch (Rounding_mode()) {
   case 128:
    Duint_increment(resultp1,resultp2);
    break;
   case 130:
    break;
   case 129:
    if(Dbl_isone_roundbit(srcp1,srcp2,src_exponent))
      if(Dbl_isone_stickybit(srcp1,srcp2,src_exponent) ||
         Duint_isone_lowp2(resultp2))
     Duint_increment(resultp1,resultp2);
   }
  }
 } else {
  Duint_setzero(resultp1,resultp2);


  if (Dbl_isnotzero_exponentmantissa(srcp1,srcp2)) {
   inexact = TRUE;

   switch (Rounding_mode()) {
   case 128:
    if (Dbl_iszero_sign(srcp1)) {
     Duint_increment(resultp1,resultp2);
    }
    break;
   case 130:
    if (Dbl_isone_sign(srcp1)) {
     resultp1 = resultp2 = 0;
     if (Is_invalidtrap_enabled()) {
      return(INVALIDEXCEPTION);
     }
     Set_invalidflag();
     inexact = FALSE;
    }
    break;
   case 129:
    if (src_exponent == -1 &&
        Dbl_isnotzero_mantissa(srcp1,srcp2))
     if (Dbl_iszero_sign(srcp1)) {
      Duint_increment(resultp1,resultp2);
     } else {
      resultp1 = 0;
      resultp2 = 0;
      if (Is_invalidtrap_enabled()) {
       return(INVALIDEXCEPTION);
      }
      Set_invalidflag();
      inexact = FALSE;
     }
   }
  }
 }
 Duint_copytoptr(resultp1,resultp2,dstptr);
 if (inexact) {
  if (Is_inexacttrap_enabled()) return(INEXACTEXCEPTION);
  else Set_inexactflag();
 }
 return(NOEXCEPTION);
}
