
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int sgl_floating_point ;
typedef int boolean ;


 int FALSE ;
 unsigned int INEXACTEXCEPTION ;
 unsigned int INVALIDEXCEPTION ;
 scalar_t__ Is_inexacttrap_enabled () ;
 scalar_t__ Is_invalidtrap_enabled () ;
 unsigned int NOEXCEPTION ;


 int Rounding_mode () ;
 int SGL_BIAS ;
 int SGL_INFINITY_EXPONENT ;
 int SGL_P ;
 int Set_inexactflag () ;
 int Set_invalidflag () ;
 int Sgl_addition (unsigned int,unsigned int,unsigned int) ;
 unsigned int Sgl_all (unsigned int) ;
 int Sgl_clear_signexponent (unsigned int) ;
 int Sgl_clear_signexponent_set_hidden (unsigned int) ;
 int Sgl_exponent (unsigned int) ;
 int Sgl_hidden (unsigned int) ;
 int Sgl_increment (unsigned int) ;
 scalar_t__ Sgl_islessthan (unsigned int,unsigned int) ;
 scalar_t__ Sgl_isnotzero (unsigned int) ;
 scalar_t__ Sgl_isnotzero_mantissa (unsigned int) ;
 scalar_t__ Sgl_isone_hiddenoverflow (unsigned int) ;
 scalar_t__ Sgl_isone_sign (unsigned int) ;
 scalar_t__ Sgl_isone_signaling (unsigned int) ;
 scalar_t__ Sgl_iszero_exponentmantissa (unsigned int) ;
 scalar_t__ Sgl_iszero_sign (unsigned int) ;
 int Sgl_leftshiftby1 (unsigned int) ;
 int Sgl_lowmantissa (unsigned int) ;
 int Sgl_makequietnan (unsigned int) ;
 int Sgl_normalize (unsigned int,int) ;
 int Sgl_rightshiftby1 (unsigned int) ;
 int Sgl_set_exponent (unsigned int,int) ;
 int Sgl_set_quiet (unsigned int) ;
 int Sgl_setzero (unsigned int) ;
 int Sgl_subtract (unsigned int,unsigned int,unsigned int) ;

unsigned int
sgl_fsqrt(
    sgl_floating_point *srcptr,
    unsigned int *nullptr,
    sgl_floating_point *dstptr,
    unsigned int *status)
{
 register unsigned int src, result;
 register int src_exponent;
 register unsigned int newbit, sum;
 register boolean guardbit = FALSE, even_exponent;

 src = *srcptr;



        if ((src_exponent = Sgl_exponent(src)) == SGL_INFINITY_EXPONENT) {



                if (Sgl_isone_signaling(src)) {

                        if (Is_invalidtrap_enabled()) return(INVALIDEXCEPTION);

                        Set_invalidflag();
                        Sgl_set_quiet(src);
                }




  if (Sgl_iszero_sign(src) || Sgl_isnotzero_mantissa(src)) {
                 *dstptr = src;
                 return(NOEXCEPTION);
  }
        }




 if (Sgl_iszero_exponentmantissa(src)) {
  *dstptr = src;
  return(NOEXCEPTION);
 }




 if (Sgl_isone_sign(src)) {

  if (Is_invalidtrap_enabled()) return(INVALIDEXCEPTION);

  Set_invalidflag();
  Sgl_makequietnan(src);
  *dstptr = src;
  return(NOEXCEPTION);
 }




 if (src_exponent > 0) {
  even_exponent = Sgl_hidden(src);
  Sgl_clear_signexponent_set_hidden(src);
 }
 else {

  Sgl_clear_signexponent(src);
  src_exponent++;
  Sgl_normalize(src,src_exponent);
  even_exponent = src_exponent & 1;
 }
 if (even_exponent) {


  Sgl_leftshiftby1(src);
 }






 Sgl_setzero(result);
 newbit = 1 << SGL_P;
 while (newbit && Sgl_isnotzero(src)) {
  Sgl_addition(result,newbit,sum);
  if(sum <= Sgl_all(src)) {

   Sgl_addition(result,(newbit<<1),result);
   Sgl_subtract(src,sum,src);
  }
  Sgl_rightshiftby1(newbit);
  Sgl_leftshiftby1(src);
 }

 if (even_exponent) {
  Sgl_rightshiftby1(result);
 }


 if (Sgl_isnotzero(src)) {
  if (!even_exponent && Sgl_islessthan(result,src))
   Sgl_increment(result);
  guardbit = Sgl_lowmantissa(result);
  Sgl_rightshiftby1(result);


  switch (Rounding_mode()) {
  case 128:
       Sgl_increment(result);
       break;
  case 129:


       if (guardbit) {
   Sgl_increment(result);
       }
       break;
  }

  if (Sgl_isone_hiddenoverflow(result)) src_exponent+=2;

  if (Is_inexacttrap_enabled()) {
   Sgl_set_exponent(result,
    ((src_exponent-SGL_BIAS)>>1)+SGL_BIAS);
   *dstptr = result;
   return(INEXACTEXCEPTION);
  }
  else Set_inexactflag();
 }
 else {
  Sgl_rightshiftby1(result);
 }
 Sgl_set_exponent(result,((src_exponent-SGL_BIAS)>>1)+SGL_BIAS);
 *dstptr = result;
 return(NOEXCEPTION);
}
