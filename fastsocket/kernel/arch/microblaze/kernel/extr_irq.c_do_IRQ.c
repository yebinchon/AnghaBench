
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int BUG_ON (int) ;
 int concurrent_irq ;
 int generic_handle_irq (unsigned int) ;
 unsigned int get_irq (struct pt_regs*) ;
 int irq_enter () ;
 int irq_exit () ;
 int pr_debug (char*,unsigned int) ;
 struct pt_regs* set_irq_regs (struct pt_regs*) ;

void do_IRQ(struct pt_regs *regs)
{
 unsigned int irq;
 struct pt_regs *old_regs = set_irq_regs(regs);

 irq_enter();
 irq = get_irq(regs);
next_irq:
 BUG_ON(irq == -1U);
 generic_handle_irq(irq);

 irq = get_irq(regs);
 if (irq != -1U) {
  pr_debug("next irq: %d\n", irq);
  ++concurrent_irq;
  goto next_irq;
 }

 irq_exit();
 set_irq_regs(old_regs);
}
