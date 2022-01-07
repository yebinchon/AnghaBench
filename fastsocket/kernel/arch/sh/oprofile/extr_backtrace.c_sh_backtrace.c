
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {scalar_t__* regs; } ;


 unsigned int backtrace_limit ;
 int backtrace_ops ;
 int unwind_stack (int *,struct pt_regs* const,unsigned long*,int *,unsigned int*) ;
 unsigned long* user_backtrace (unsigned long*,struct pt_regs* const) ;
 int user_mode (struct pt_regs* const) ;

void sh_backtrace(struct pt_regs * const regs, unsigned int depth)
{
 unsigned long *stackaddr;




 if (depth > backtrace_limit)
  depth = backtrace_limit;

 stackaddr = (unsigned long *)regs->regs[15];
 if (!user_mode(regs)) {
  if (depth)
   unwind_stack(((void*)0), regs, stackaddr,
         &backtrace_ops, &depth);
  return;
 }

 while (depth-- && (stackaddr != ((void*)0)))
  stackaddr = user_backtrace(stackaddr, regs);
}
