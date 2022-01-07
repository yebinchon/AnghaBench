
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long* gpr; } ;


 int TIF_32BIT ;
 unsigned long kernel_getsp (unsigned long,int) ;
 int test_thread_flag (int ) ;
 unsigned long user_getsp32 (unsigned long,int) ;
 unsigned long user_getsp64 (unsigned long,int) ;
 int user_mode (struct pt_regs* const) ;

void op_powerpc_backtrace(struct pt_regs * const regs, unsigned int depth)
{
 unsigned long sp = regs->gpr[1];
 int first_frame = 1;


 depth += 1;

 if (!user_mode(regs)) {
  while (depth--) {
   sp = kernel_getsp(sp, first_frame);
   if (!sp)
    break;
   first_frame = 0;
  }
 } else {
  while (depth--) {
   sp = user_getsp32(sp, first_frame);
   if (!sp)
    break;
   first_frame = 0;
  }
 }
}
