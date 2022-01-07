
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dbl_floating_point ;
typedef int boolean ;


 int DBL_BIAS ;
 int DBL_INFINITY_EXPONENT ;
 int DBL_P ;
 int Dallp2 (unsigned int) ;
 scalar_t__ Dbit28p2 (unsigned int) ;
 scalar_t__ Dbit29p2 (unsigned int) ;
 scalar_t__ Dbit30p2 (unsigned int) ;
 scalar_t__ Dbit31p2 (unsigned int) ;
 scalar_t__ Dbit3p1 (unsigned int) ;
 int Dbl_clear_signexponent (unsigned int) ;
 int Dbl_clear_signexponent_set_hidden (unsigned int) ;
 int Dbl_copyfromptr (int *,unsigned int,unsigned int) ;
 int Dbl_copytoptr (unsigned int,unsigned int,int *) ;
 int Dbl_decrement (unsigned int,unsigned int) ;
 int Dbl_denormalize (unsigned int,unsigned int,int,int,int,int) ;
 int Dbl_exponent (unsigned int) ;
 int Dbl_increment (unsigned int,unsigned int) ;
 scalar_t__ Dbl_is_signalingnan (unsigned int) ;
 scalar_t__ Dbl_isinfinity_exponent (unsigned int) ;
 scalar_t__ Dbl_isnotnan (unsigned int,unsigned int) ;
 scalar_t__ Dbl_isnotzero_exponent (unsigned int) ;
 scalar_t__ Dbl_isone_hidden (unsigned int) ;
 int Dbl_isone_hiddenoverflow (unsigned int) ;
 int Dbl_isone_lowmantissap2 (unsigned int) ;
 int Dbl_isone_sign (unsigned int) ;
 scalar_t__ Dbl_isone_signaling (unsigned int) ;
 scalar_t__ Dbl_iszero_exponentmantissa (unsigned int,unsigned int) ;
 scalar_t__ Dbl_iszero_mantissa (unsigned int,unsigned int) ;
 int Dbl_iszero_sign (unsigned int) ;
 int Dbl_leftshiftby1 (unsigned int,unsigned int) ;
 int Dbl_leftshiftby7 (unsigned int,unsigned int) ;
 int Dbl_makequietnan (unsigned int,unsigned int) ;
 int Dbl_normalize (unsigned int,unsigned int,int) ;
 int Dbl_rightshiftby4 (unsigned int,unsigned int) ;
 int Dbl_rightshiftby8 (unsigned int,unsigned int) ;
 int Dbl_set_exponent (unsigned int,int) ;
 int Dbl_set_exponentmantissa (unsigned int,unsigned int,unsigned int,unsigned int) ;
 int Dbl_set_mantissa (unsigned int,unsigned int,unsigned int,unsigned int) ;
 int Dbl_set_quiet (unsigned int) ;
 int Dbl_setinfinity_exponentmantissa (unsigned int,unsigned int) ;
 int Dbl_setnegativezerop1 (unsigned int) ;
 int Dbl_setoverflow (unsigned int,unsigned int) ;
 int Dbl_setwrapped_exponent (unsigned int,int,int ) ;
 int Dbl_setzero (unsigned int,unsigned int) ;
 int Dbl_setzero_exponentmantissa (unsigned int,unsigned int) ;
 int Dbl_setzerop1 (unsigned int) ;
 int Dbl_sign (unsigned int) ;
 int Dlow4p2 (unsigned int) ;
 int FALSE ;
 int INEXACTEXCEPTION ;
 int INVALIDEXCEPTION ;
 scalar_t__ Is_inexacttrap_enabled () ;
 scalar_t__ Is_invalidtrap_enabled () ;
 scalar_t__ Is_overflowtrap_enabled () ;
 scalar_t__ Is_underflowtrap_enabled () ;
 int NOEXCEPTION ;
 int OVERFLOWEXCEPTION ;



 int Rounding_mode () ;
 int Set_inexactflag () ;
 int Set_invalidflag () ;
 int Set_overflowflag () ;
 int Set_underflowflag () ;
 int TRUE ;
 int Twoword_add (unsigned int,unsigned int,unsigned int,unsigned int) ;
 int UNDERFLOWEXCEPTION ;
 int ovfl ;
 int unfl ;

int
dbl_fmpy(
     dbl_floating_point *srcptr1,
     dbl_floating_point *srcptr2,
     dbl_floating_point *dstptr,
     unsigned int *status)
{
 register unsigned int opnd1p1, opnd1p2, opnd2p1, opnd2p2;
 register unsigned int opnd3p1, opnd3p2, resultp1, resultp2;
 register int dest_exponent, count;
 register boolean inexact = FALSE, guardbit = FALSE, stickybit = FALSE;
 boolean is_tiny;

 Dbl_copyfromptr(srcptr1,opnd1p1,opnd1p2);
 Dbl_copyfromptr(srcptr2,opnd2p1,opnd2p2);




 if (Dbl_sign(opnd1p1) ^ Dbl_sign(opnd2p1))
  Dbl_setnegativezerop1(resultp1);
 else Dbl_setzerop1(resultp1);



 if (Dbl_isinfinity_exponent(opnd1p1)) {
  if (Dbl_iszero_mantissa(opnd1p1,opnd1p2)) {
   if (Dbl_isnotnan(opnd2p1,opnd2p2)) {
    if (Dbl_iszero_exponentmantissa(opnd2p1,opnd2p2)) {




     if (Is_invalidtrap_enabled())
                                  return(INVALIDEXCEPTION);
                                 Set_invalidflag();
                                 Dbl_makequietnan(resultp1,resultp2);
     Dbl_copytoptr(resultp1,resultp2,dstptr);
     return(NOEXCEPTION);
    }



    Dbl_setinfinity_exponentmantissa(resultp1,resultp2);
    Dbl_copytoptr(resultp1,resultp2,dstptr);
    return(NOEXCEPTION);
   }
  }
  else {



                 if (Dbl_isone_signaling(opnd1p1)) {

                         if (Is_invalidtrap_enabled())
                              return(INVALIDEXCEPTION);

                         Set_invalidflag();
                         Dbl_set_quiet(opnd1p1);
                 }



   else if (Dbl_is_signalingnan(opnd2p1)) {

                         if (Is_invalidtrap_enabled())
                              return(INVALIDEXCEPTION);

                         Set_invalidflag();
                         Dbl_set_quiet(opnd2p1);
    Dbl_copytoptr(opnd2p1,opnd2p2,dstptr);
                  return(NOEXCEPTION);
   }



   Dbl_copytoptr(opnd1p1,opnd1p2,dstptr);
                 return(NOEXCEPTION);
  }
 }



 if (Dbl_isinfinity_exponent(opnd2p1)) {
  if (Dbl_iszero_mantissa(opnd2p1,opnd2p2)) {
   if (Dbl_iszero_exponentmantissa(opnd1p1,opnd1p2)) {

    if (Is_invalidtrap_enabled())
                                 return(INVALIDEXCEPTION);
                                Set_invalidflag();
                                Dbl_makequietnan(opnd2p1,opnd2p2);
    Dbl_copytoptr(opnd2p1,opnd2p2,dstptr);
    return(NOEXCEPTION);
   }



   Dbl_setinfinity_exponentmantissa(resultp1,resultp2);
   Dbl_copytoptr(resultp1,resultp2,dstptr);
   return(NOEXCEPTION);
  }



                if (Dbl_isone_signaling(opnd2p1)) {

                        if (Is_invalidtrap_enabled()) return(INVALIDEXCEPTION);

                        Set_invalidflag();
                        Dbl_set_quiet(opnd2p1);
                }



  Dbl_copytoptr(opnd2p1,opnd2p2,dstptr);
                return(NOEXCEPTION);
 }



 dest_exponent = Dbl_exponent(opnd1p1) + Dbl_exponent(opnd2p1) -DBL_BIAS;




 if (Dbl_isnotzero_exponent(opnd1p1)) {

  Dbl_clear_signexponent_set_hidden(opnd1p1);
 }
 else {

  if (Dbl_iszero_mantissa(opnd1p1,opnd1p2)) {
   Dbl_setzero_exponentmantissa(resultp1,resultp2);
   Dbl_copytoptr(resultp1,resultp2,dstptr);
   return(NOEXCEPTION);
  }

                Dbl_clear_signexponent(opnd1p1);
                Dbl_leftshiftby1(opnd1p1,opnd1p2);
  Dbl_normalize(opnd1p1,opnd1p2,dest_exponent);
 }

 if (Dbl_isnotzero_exponent(opnd2p1)) {
  Dbl_clear_signexponent_set_hidden(opnd2p1);
 }
 else {

  if (Dbl_iszero_mantissa(opnd2p1,opnd2p2)) {
   Dbl_setzero_exponentmantissa(resultp1,resultp2);
   Dbl_copytoptr(resultp1,resultp2,dstptr);
   return(NOEXCEPTION);
  }

                Dbl_clear_signexponent(opnd2p1);
                Dbl_leftshiftby1(opnd2p1,opnd2p2);
  Dbl_normalize(opnd2p1,opnd2p2,dest_exponent);
 }




 Dbl_leftshiftby7(opnd2p1,opnd2p2);
 Dbl_setzero(opnd3p1,opnd3p2);




 for (count=1;count<=DBL_P;count+=4) {
  stickybit |= Dlow4p2(opnd3p2);
  Dbl_rightshiftby4(opnd3p1,opnd3p2);
  if (Dbit28p2(opnd1p2)) {

                        Twoword_add(opnd3p1, opnd3p2, opnd2p1<<3 | opnd2p2>>29,
        opnd2p2<<3);
  }
  if (Dbit29p2(opnd1p2)) {
                        Twoword_add(opnd3p1, opnd3p2, opnd2p1<<2 | opnd2p2>>30,
        opnd2p2<<2);
  }
  if (Dbit30p2(opnd1p2)) {
                        Twoword_add(opnd3p1, opnd3p2, opnd2p1<<1 | opnd2p2>>31,
        opnd2p2<<1);
  }
  if (Dbit31p2(opnd1p2)) {
                        Twoword_add(opnd3p1, opnd3p2, opnd2p1, opnd2p2);
  }
  Dbl_rightshiftby4(opnd1p1,opnd1p2);
 }
 if (Dbit3p1(opnd3p1)==0) {
  Dbl_leftshiftby1(opnd3p1,opnd3p2);
 }
 else {

  dest_exponent++;
 }

 while (Dbit3p1(opnd3p1)==0) {
  Dbl_leftshiftby1(opnd3p1,opnd3p2);
  dest_exponent--;
 }



 stickybit |= Dallp2(opnd3p2) << 25;
 guardbit = (Dallp2(opnd3p2) << 24) >> 31;
 inexact = guardbit | stickybit;


 Dbl_rightshiftby8(opnd3p1,opnd3p2);




 if (inexact && (dest_exponent>0 || Is_underflowtrap_enabled())) {
  Dbl_clear_signexponent(opnd3p1);
  switch (Rounding_mode()) {
   case 128:
    if (Dbl_iszero_sign(resultp1))
     Dbl_increment(opnd3p1,opnd3p2);
    break;
   case 130:
    if (Dbl_isone_sign(resultp1))
     Dbl_increment(opnd3p1,opnd3p2);
    break;
   case 129:
    if (guardbit) {
       if (stickybit || Dbl_isone_lowmantissap2(opnd3p2))
          Dbl_increment(opnd3p1,opnd3p2);
    }
  }
  if (Dbl_isone_hidden(opnd3p1)) dest_exponent++;
 }
 Dbl_set_mantissa(resultp1,resultp2,opnd3p1,opnd3p2);




 if (dest_exponent >= DBL_INFINITY_EXPONENT) {

                if (Is_overflowtrap_enabled()) {



   Dbl_setwrapped_exponent(resultp1,dest_exponent,ovfl);
   Dbl_copytoptr(resultp1,resultp2,dstptr);
   if (inexact)
       if (Is_inexacttrap_enabled())
    return (OVERFLOWEXCEPTION | INEXACTEXCEPTION);
       else Set_inexactflag();
   return (OVERFLOWEXCEPTION);
                }
  inexact = TRUE;
  Set_overflowflag();

  Dbl_setoverflow(resultp1,resultp2);
 }



 else if (dest_exponent <= 0) {

                if (Is_underflowtrap_enabled()) {



   Dbl_setwrapped_exponent(resultp1,dest_exponent,unfl);
   Dbl_copytoptr(resultp1,resultp2,dstptr);
   if (inexact)
       if (Is_inexacttrap_enabled())
    return (UNDERFLOWEXCEPTION | INEXACTEXCEPTION);
       else Set_inexactflag();
   return (UNDERFLOWEXCEPTION);
                }


  is_tiny = TRUE;
  if (dest_exponent == 0 && inexact) {
   switch (Rounding_mode()) {
   case 128:
    if (Dbl_iszero_sign(resultp1)) {
     Dbl_increment(opnd3p1,opnd3p2);
     if (Dbl_isone_hiddenoverflow(opnd3p1))
                       is_tiny = FALSE;
     Dbl_decrement(opnd3p1,opnd3p2);
    }
    break;
   case 130:
    if (Dbl_isone_sign(resultp1)) {
     Dbl_increment(opnd3p1,opnd3p2);
     if (Dbl_isone_hiddenoverflow(opnd3p1))
                       is_tiny = FALSE;
     Dbl_decrement(opnd3p1,opnd3p2);
    }
    break;
   case 129:
    if (guardbit && (stickybit ||
        Dbl_isone_lowmantissap2(opnd3p2))) {
           Dbl_increment(opnd3p1,opnd3p2);
     if (Dbl_isone_hiddenoverflow(opnd3p1))
                       is_tiny = FALSE;
     Dbl_decrement(opnd3p1,opnd3p2);
    }
    break;
   }
  }




  stickybit = inexact;
  Dbl_denormalize(opnd3p1,opnd3p2,dest_exponent,guardbit,
   stickybit,inexact);


  if (inexact) {
   switch (Rounding_mode()) {
   case 128:
    if (Dbl_iszero_sign(resultp1)) {
     Dbl_increment(opnd3p1,opnd3p2);
    }
    break;
   case 130:
    if (Dbl_isone_sign(resultp1)) {
     Dbl_increment(opnd3p1,opnd3p2);
    }
    break;
   case 129:
    if (guardbit && (stickybit ||
        Dbl_isone_lowmantissap2(opnd3p2))) {
           Dbl_increment(opnd3p1,opnd3p2);
    }
    break;
   }
                 if (is_tiny) Set_underflowflag();
  }
  Dbl_set_exponentmantissa(resultp1,resultp2,opnd3p1,opnd3p2);
 }
 else Dbl_set_exponent(resultp1,dest_exponent);

 Dbl_copytoptr(resultp1,resultp2,dstptr);
 if (inexact) {
  if (Is_inexacttrap_enabled()) return(INEXACTEXCEPTION);
  else Set_inexactflag();
 }
 return(NOEXCEPTION);
}
