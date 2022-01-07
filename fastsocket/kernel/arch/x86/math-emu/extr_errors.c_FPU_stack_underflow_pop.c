
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONST_QNaN ;
 int CW_Invalid ;
 int EXCEPTION (int ) ;
 int EX_StackUnder ;
 int FPU_copy_to_regi (int *,int ,int) ;
 int FPU_pop () ;
 int TAG_Special ;
 int control_word ;

void FPU_stack_underflow_pop(int i)
{

 if (control_word & CW_Invalid) {

  FPU_copy_to_regi(&CONST_QNaN, TAG_Special, i);
  FPU_pop();
 }

 EXCEPTION(EX_StackUnder);

 return;

}
