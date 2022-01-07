
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
typedef int FPU_REG ;


 scalar_t__ FPU_Special (int *) ;
 int FPU_normalize (int *) ;
 int FPU_round_to_int (int *,scalar_t__) ;
 int FPU_settag0 (int) ;
 scalar_t__ TAG_Special ;
 scalar_t__ TAG_Valid ;
 scalar_t__ TAG_Zero ;
 scalar_t__ TW_Denormal ;
 scalar_t__ TW_Infinity ;
 scalar_t__ denormal_operand () ;
 int exponent (int *) ;
 scalar_t__ getsign (int *) ;
 int set_precision_flag (int) ;
 int setexponent16 (int *,int) ;
 int setsign (int *,scalar_t__) ;
 int single_arg_error (int *,scalar_t__) ;

__attribute__((used)) static void frndint_(FPU_REG *st0_ptr, u_char st0_tag)
{
 int flags, tag;

 if (st0_tag == TAG_Valid) {
  u_char sign;

       denormal_arg:

  sign = getsign(st0_ptr);

  if (exponent(st0_ptr) > 63)
   return;

  if (st0_tag == TW_Denormal) {
   if (denormal_operand() < 0)
    return;
  }


  if ((flags = FPU_round_to_int(st0_ptr, st0_tag)))
   set_precision_flag(flags);

  setexponent16(st0_ptr, 63);
  tag = FPU_normalize(st0_ptr);
  setsign(st0_ptr, sign);
  FPU_settag0(tag);
  return;
 }

 if (st0_tag == TAG_Zero)
  return;

 if (st0_tag == TAG_Special)
  st0_tag = FPU_Special(st0_ptr);

 if (st0_tag == TW_Denormal)
  goto denormal_arg;
 else if (st0_tag == TW_Infinity)
  return;
 else
  single_arg_error(st0_ptr, st0_tag);
}
