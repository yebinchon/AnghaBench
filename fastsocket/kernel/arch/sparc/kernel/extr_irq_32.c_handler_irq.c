
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct irqaction {struct irqaction* next; int dev_id; int (* handler ) (int,int ) ;} ;
struct TYPE_4__ {int * irqs; } ;
struct TYPE_3__ {int flags; struct irqaction* action; } ;


 int SPARC_IRQ_INPROGRESS ;
 int disable_pil_irq (int) ;
 int enable_pil_irq (int) ;
 int irq_enter () ;
 int irq_exit () ;
 TYPE_2__ kstat_cpu (int) ;
 struct pt_regs* set_irq_regs (struct pt_regs*) ;
 int smp_processor_id () ;
 scalar_t__ sparc_cpu_model ;
 TYPE_1__* sparc_irq ;
 int stub1 (int,int ) ;
 scalar_t__ sun4m ;
 int unexpected_irq (int,int *,struct pt_regs*) ;

void handler_irq(int irq, struct pt_regs * regs)
{
 struct pt_regs *old_regs;
 struct irqaction * action;
 int cpu = smp_processor_id();




 old_regs = set_irq_regs(regs);
 irq_enter();
 disable_pil_irq(irq);





 action = sparc_irq[irq].action;
 sparc_irq[irq].flags |= SPARC_IRQ_INPROGRESS;
 kstat_cpu(cpu).irqs[irq]++;
 do {
  if (!action || !action->handler)
   unexpected_irq(irq, ((void*)0), regs);
  action->handler(irq, action->dev_id);
  action = action->next;
 } while (action);
 sparc_irq[irq].flags &= ~SPARC_IRQ_INPROGRESS;
 enable_pil_irq(irq);
 irq_exit();
 set_irq_regs(old_regs);
}
