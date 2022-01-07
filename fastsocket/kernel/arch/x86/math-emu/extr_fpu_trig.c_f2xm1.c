
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int FPU_REG ;


 int CONST_1 ;
 int FPU_Special (int *) ;
 int FPU_copy_to_reg0 (int *,int) ;
 int FPU_to_exp16 (int *,int *) ;
 int TAG_Special ;
 int TAG_Valid ;
 int TAG_Zero ;


 int clear_C1 () ;
 int denormal_operand () ;
 scalar_t__ exponent (int *) ;
 int getsign (int *) ;
 int poly_2xm1 (int ,int *,int *) ;
 int set_precision_flag_up () ;
 int setnegative (int *) ;
 int signnegative (int *) ;
 int single_arg_error (int *,int) ;

__attribute__((used)) static void f2xm1(FPU_REG *st0_ptr, u_char tag)
{
 FPU_REG a;

 clear_C1();

 if (tag == TAG_Valid) {

  if (exponent(st0_ptr) < 0) {
        denormal_arg:

   FPU_to_exp16(st0_ptr, &a);


   poly_2xm1(getsign(st0_ptr), &a, st0_ptr);
  }
  set_precision_flag_up();
  return;
 }

 if (tag == TAG_Zero)
  return;

 if (tag == TAG_Special)
  tag = FPU_Special(st0_ptr);

 switch (tag) {
 case 129:
  if (denormal_operand() < 0)
   return;
  goto denormal_arg;
 case 128:
  if (signnegative(st0_ptr)) {

   FPU_copy_to_reg0(&CONST_1, TAG_Valid);
   setnegative(st0_ptr);
  }
  return;
 default:
  single_arg_error(st0_ptr, tag);
 }
}
