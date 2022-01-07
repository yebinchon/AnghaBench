
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int irq_enter () ;
 int irq_exit () ;
 struct pt_regs* set_irq_regs (struct pt_regs*) ;
 int smp_local_timer_interrupt () ;

void smp_ipi_timer_interrupt(struct pt_regs *regs)
{
 struct pt_regs *old_regs;
 old_regs = set_irq_regs(regs);
 irq_enter();
 smp_local_timer_interrupt();
 irq_exit();
 set_irq_regs(old_regs);
}
