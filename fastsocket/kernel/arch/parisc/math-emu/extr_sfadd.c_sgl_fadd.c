
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int sgl_floating_point ;
typedef scalar_t__ boolean ;


 scalar_t__ Ext_isnotzero (unsigned int) ;
 int Ext_isnotzero_lower (unsigned int) ;
 int Ext_isone_sign (unsigned int) ;
 int Ext_leftshiftby1 (unsigned int) ;
 scalar_t__ FALSE ;
 int INEXACTEXCEPTION ;
 int INVALIDEXCEPTION ;
 scalar_t__ Is_inexacttrap_enabled () ;
 scalar_t__ Is_invalidtrap_enabled () ;
 scalar_t__ Is_overflowtrap_enabled () ;
 scalar_t__ Is_rounding_mode (int) ;
 scalar_t__ Is_underflowtrap_enabled () ;
 int NOEXCEPTION ;
 int OVERFLOWEXCEPTION ;




 int Rounding_mode () ;
 int SGL_INFINITY_EXPONENT ;
 int SGL_THRESHOLD ;
 int Set_inexactflag () ;
 int Set_invalidflag () ;
 int Set_overflowflag () ;
 int Sgl_addition (unsigned int,unsigned int,unsigned int) ;
 int Sgl_and_signs (unsigned int,unsigned int) ;
 int Sgl_arithrightshiftby1 (unsigned int) ;
 int Sgl_clear_exponent_set_hidden (unsigned int) ;
 int Sgl_clear_sign (unsigned int) ;
 int Sgl_clear_signexponent (unsigned int) ;
 int Sgl_clear_signexponent_set_hidden (unsigned int) ;
 int Sgl_copytoint_exponentmantissa (unsigned int,unsigned int) ;
 int Sgl_exponent (unsigned int) ;
 int Sgl_hiddenhigh3mantissa (unsigned int) ;
 int Sgl_increment (unsigned int) ;
 scalar_t__ Sgl_is_signalingnan (unsigned int) ;
 scalar_t__ Sgl_isinfinity (unsigned int) ;
 scalar_t__ Sgl_isinfinity_exponent (unsigned int) ;
 scalar_t__ Sgl_ismagnitudeless (unsigned int,unsigned int) ;
 scalar_t__ Sgl_isnotnan (unsigned int) ;
 scalar_t__ Sgl_isone_hidden (unsigned int) ;
 scalar_t__ Sgl_isone_hiddenoverflow (unsigned int) ;
 int Sgl_isone_lowmantissa (unsigned int) ;
 int Sgl_isone_sign (unsigned int) ;
 scalar_t__ Sgl_isone_signaling (unsigned int) ;
 scalar_t__ Sgl_iszero (unsigned int) ;
 scalar_t__ Sgl_iszero_exponentmantissa (unsigned int) ;
 scalar_t__ Sgl_iszero_hidden (unsigned int) ;
 scalar_t__ Sgl_iszero_hiddenhigh3mantissa (unsigned int) ;
 scalar_t__ Sgl_iszero_hiddenhigh7mantissa (unsigned int) ;
 scalar_t__ Sgl_iszero_mantissa (unsigned int) ;
 int Sgl_iszero_sign (unsigned int) ;
 int Sgl_leftshiftby1 (unsigned int) ;
 int Sgl_leftshiftby1_withextent (unsigned int,unsigned int,unsigned int) ;
 int Sgl_leftshiftby2 (unsigned int) ;
 int Sgl_leftshiftby3 (unsigned int) ;
 int Sgl_leftshiftby4 (unsigned int) ;
 int Sgl_leftshiftby8 (unsigned int) ;
 int Sgl_makequietnan (unsigned int) ;
 int Sgl_normalize (unsigned int,int) ;
 int Sgl_or_signs (unsigned int,unsigned int) ;
 int Sgl_right_align (unsigned int,int,unsigned int) ;
 int Sgl_rightshiftby1_withextent (unsigned int,unsigned int,unsigned int) ;
 int Sgl_set_exponent (unsigned int,int) ;
 int Sgl_set_quiet (unsigned int) ;
 int Sgl_set_sign (unsigned int,int) ;
 int Sgl_sethigh4bits (unsigned int,int) ;
 int Sgl_setone_sign (unsigned int) ;
 int Sgl_setoverflow (unsigned int) ;
 int Sgl_setwrapped_exponent (unsigned int,int,int ) ;
 int Sgl_setzero_sign (unsigned int) ;
 int Sgl_signextendedsign (unsigned int) ;
 int Sgl_subtract (unsigned int,unsigned int,unsigned int) ;
 int Sgl_subtract_withextension (unsigned int,unsigned int,unsigned int,unsigned int) ;
 int Sgl_xorfromintp1 (unsigned int,unsigned int,unsigned int) ;
 int Sgl_xortointp1 (unsigned int,unsigned int,unsigned int) ;
 scalar_t__ TRUE ;
 int UNDERFLOWEXCEPTION ;
 int ovfl ;
 int unfl ;

int
sgl_fadd(
    sgl_floating_point *leftptr,
    sgl_floating_point *rightptr,
    sgl_floating_point *dstptr,
    unsigned int *status)
    {
    register unsigned int left, right, result, extent;
    register unsigned int signless_upper_left, signless_upper_right, save;


    register int result_exponent, right_exponent, diff_exponent;
    register int sign_save, jumpsize;
    register boolean inexact = FALSE;
    register boolean underflowtrap;


    left = *leftptr;
    right = *rightptr;



    Sgl_xortointp1(left,right, save);




    if ((result_exponent = Sgl_exponent(left)) == SGL_INFINITY_EXPONENT)
 {
 if (Sgl_iszero_mantissa(left))
     {
     if (Sgl_isnotnan(right))
  {
  if (Sgl_isinfinity(right) && save!=0)
      {



      if (Is_invalidtrap_enabled()) return(INVALIDEXCEPTION);
                    Set_invalidflag();
                    Sgl_makequietnan(result);
      *dstptr = result;
      return(NOEXCEPTION);
      }



  *dstptr = left;
  return(NOEXCEPTION);
  }
     }
 else
     {



            if (Sgl_isone_signaling(left))
  {

  if (Is_invalidtrap_enabled()) return(INVALIDEXCEPTION);

         Set_invalidflag();
         Sgl_set_quiet(left);
         }



     else if (Sgl_is_signalingnan(right))
  {

                if (Is_invalidtrap_enabled()) return(INVALIDEXCEPTION);

  Set_invalidflag();
  Sgl_set_quiet(right);
  *dstptr = right;
  return(NOEXCEPTION);
  }



      *dstptr = left;
      return(NOEXCEPTION);
     }
 }



    if (Sgl_isinfinity_exponent(right))
 {
 if (Sgl_iszero_mantissa(right))
     {

     *dstptr = right;
     return(NOEXCEPTION);
     }



        if (Sgl_isone_signaling(right))
     {

     if (Is_invalidtrap_enabled()) return(INVALIDEXCEPTION);

     Set_invalidflag();
     Sgl_set_quiet(right);
     }



 *dstptr = right;
 return(NOEXCEPTION);
     }




    Sgl_copytoint_exponentmantissa(left,signless_upper_left);
    Sgl_copytoint_exponentmantissa(right,signless_upper_right);


    if(Sgl_ismagnitudeless(signless_upper_left,signless_upper_right))
 {


 Sgl_xorfromintp1(save,right, right);
 Sgl_xorfromintp1(save,left, left);
 result_exponent = Sgl_exponent(left);
 }


    if((right_exponent = Sgl_exponent(right)) == 0)
        {

 if(Sgl_iszero_mantissa(right))
     {

     if(Sgl_iszero_exponentmantissa(left))
  {

  if(Is_rounding_mode(131))
      {
      Sgl_or_signs(left, right);
      }
  else
      {
      Sgl_and_signs(left, right);
      }
  }
     else
  {



  if( (result_exponent == 0) && Is_underflowtrap_enabled() )
      {

          sign_save = Sgl_signextendedsign(left);
      Sgl_leftshiftby1(left);
      Sgl_normalize(left,result_exponent);
      Sgl_set_sign(left, sign_save);
      Sgl_setwrapped_exponent(left,result_exponent,unfl);
      *dstptr = left;
      return(UNDERFLOWEXCEPTION);
      }
  }
     *dstptr = left;
     return(NOEXCEPTION);
     }


 Sgl_clear_sign(right);
 if(result_exponent == 0 )
     {



     if( ( int) save < 0 )
  {
  Sgl_subtract(left, right, result);
  if(Sgl_iszero_mantissa(result))
      {
      if(Is_rounding_mode(131))
   {
   Sgl_setone_sign(result);
   }
      else
   {
   Sgl_setzero_sign(result);
   }
      *dstptr = result;
      return(NOEXCEPTION);
      }
  }
     else
  {
  Sgl_addition(left,right, result);
  if(Sgl_isone_hidden(result))
      {
      *dstptr = result;
      return(NOEXCEPTION);
      }
  }
     if(Is_underflowtrap_enabled())
  {

      sign_save = Sgl_signextendedsign(result);
  Sgl_leftshiftby1(result);
  Sgl_normalize(result,result_exponent);
  Sgl_set_sign(result, sign_save);
                Sgl_setwrapped_exponent(result,result_exponent,unfl);
  *dstptr = result;
  return(UNDERFLOWEXCEPTION);
  }
     *dstptr = result;
     return(NOEXCEPTION);
     }
 right_exponent = 1;

 }
    else
 {
 Sgl_clear_signexponent_set_hidden(right);
 }
    Sgl_clear_exponent_set_hidden(left);
    diff_exponent = result_exponent - right_exponent;







    if(diff_exponent > SGL_THRESHOLD)
 {
 diff_exponent = SGL_THRESHOLD;
 }


    Sgl_right_align( right, diff_exponent,
                     extent);


    if( ( int) save < 0 )
 {





 Sgl_subtract_withextension(left, right, extent, result);
 if(Sgl_iszero_hidden(result))
     {
     sign_save = Sgl_signextendedsign(result);
            Sgl_leftshiftby1_withextent(result,extent,result);





         if(Sgl_iszero(result))

  {
  if(Is_rounding_mode(131)) Sgl_setone_sign(result);
  *dstptr = result;
  return(NOEXCEPTION);
  }
     result_exponent--;

     if(Sgl_isone_hidden(result))
  {
  if(result_exponent==0)
      {


      goto underflow;
      }
  else
      {

      Sgl_set_sign(result, sign_save);
          Ext_leftshiftby1(extent);
      goto round;
      }
  }



     if(!(underflowtrap = Is_underflowtrap_enabled()) &&
        result_exponent==0) goto underflow;



     Ext_leftshiftby1(extent);






     while(Sgl_iszero_hiddenhigh7mantissa(result))
  {
  Sgl_leftshiftby8(result);
  if((result_exponent -= 8) <= 0 && !underflowtrap)
      goto underflow;
  }

     if(Sgl_iszero_hiddenhigh3mantissa(result))
  {

  Sgl_leftshiftby4(result);
  if((result_exponent -= 4) <= 0 && !underflowtrap)
      goto underflow;
  }


     if((jumpsize = Sgl_hiddenhigh3mantissa(result)) > 7)
  {

  if(result_exponent <= 0) goto underflow;
  Sgl_set_sign(result, sign_save);
  Sgl_set_exponent(result, result_exponent);
  *dstptr = result;
  return(NOEXCEPTION);
  }
     Sgl_sethigh4bits(result, sign_save);
     switch(jumpsize)
  {
  case 1:
      {
      Sgl_leftshiftby3(result);
      result_exponent -= 3;
      break;
      }
  case 2:
  case 3:
      {
      Sgl_leftshiftby2(result);
      result_exponent -= 2;
      break;
      }
  case 4:
  case 5:
  case 6:
  case 7:
      {
      Sgl_leftshiftby1(result);
      result_exponent -= 1;
      break;
      }
  }
     if(result_exponent > 0)
  {
  Sgl_set_exponent(result, result_exponent);
  *dstptr = result;
  return(NOEXCEPTION);
  }

   underflow:
     if(Is_underflowtrap_enabled())
  {
  Sgl_set_sign(result,sign_save);
                Sgl_setwrapped_exponent(result,result_exponent,unfl);
  *dstptr = result;

  return(UNDERFLOWEXCEPTION);
  }




     Sgl_right_align(result, (1-result_exponent),extent);
     Sgl_clear_signexponent(result);
     Sgl_set_sign(result,sign_save);
     *dstptr = result;
     return(NOEXCEPTION);
     }

 }
    else
 {

 Sgl_addition(left,right, result);
 if(Sgl_isone_hiddenoverflow(result))
     {

     Sgl_rightshiftby1_withextent(result,extent,extent);
     Sgl_arithrightshiftby1(result);
     result_exponent++;
     }
 }





  round:
    if(Ext_isnotzero(extent))
 {
 inexact = TRUE;
 switch(Rounding_mode())
     {
     case 130:
     if(Ext_isone_sign(extent))
  {

  if(Ext_isnotzero_lower(extent) ||
    Sgl_isone_lowmantissa(result))
      {

      Sgl_increment(result);
      }
  }
     break;

     case 129:
     if(Sgl_iszero_sign(result))
  {

  Sgl_increment(result);
  }
     break;

     case 131:
     if(Sgl_isone_sign(result))
  {

  Sgl_increment(result);
  }

     case 128:;

     }
 if(Sgl_isone_hiddenoverflow(result)) result_exponent++;
 }
    if(result_exponent == SGL_INFINITY_EXPONENT)
        {

        if(Is_overflowtrap_enabled())
     {
     Sgl_setwrapped_exponent(result,result_exponent,ovfl);
     *dstptr = result;
     if (inexact)
  if (Is_inexacttrap_enabled())
      return(OVERFLOWEXCEPTION | INEXACTEXCEPTION);
  else Set_inexactflag();
     return(OVERFLOWEXCEPTION);
     }
        else
     {
     Set_overflowflag();
     inexact = TRUE;
     Sgl_setoverflow(result);
     }
 }
    else Sgl_set_exponent(result,result_exponent);
    *dstptr = result;
    if(inexact)
 if(Is_inexacttrap_enabled()) return(INEXACTEXCEPTION);
 else Set_inexactflag();
    return(NOEXCEPTION);
    }
