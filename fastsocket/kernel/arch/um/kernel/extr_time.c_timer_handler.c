
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uml_pt_regs {int dummy; } ;


 int TIMER_IRQ ;
 int do_IRQ (int ,struct uml_pt_regs*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void timer_handler(int sig, struct uml_pt_regs *regs)
{
 unsigned long flags;

 local_irq_save(flags);
 do_IRQ(TIMER_IRQ, regs);
 local_irq_restore(flags);
}
