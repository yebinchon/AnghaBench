
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 unsigned long ESCAPE_CODE ;
 int __oprofile_add_ext_sample (unsigned long,struct pt_regs* const,unsigned long,int) ;
 scalar_t__ likely (struct pt_regs* const) ;
 unsigned long profile_pc (struct pt_regs* const) ;
 int user_mode (struct pt_regs* const) ;

void oprofile_add_sample(struct pt_regs * const regs, unsigned long event)
{
 int is_kernel;
 unsigned long pc;

 if (likely(regs)) {
  is_kernel = !user_mode(regs);
  pc = profile_pc(regs);
 } else {
  is_kernel = 0;
  pc = ESCAPE_CODE;
 }

 __oprofile_add_ext_sample(pc, regs, event, is_kernel);
}
