
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int flags; } ;


 int X86_EFLAGS_IF ;
 int inc_preempt_count () ;
 int local_irq_enable () ;

__attribute__((used)) static inline void preempt_conditional_sti(struct pt_regs *regs)
{
 inc_preempt_count();
 if (regs->flags & X86_EFLAGS_IF)
  local_irq_enable();
}
