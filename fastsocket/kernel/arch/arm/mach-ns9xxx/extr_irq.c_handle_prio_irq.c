
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irqaction {int dummy; } ;
struct irq_desc {int status; int lock; TYPE_1__* chip; struct irqaction* action; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* ack ) (unsigned int) ;int (* mask ) (unsigned int) ;} ;


 int BUG_ON (int) ;
 int IRQ_DISABLED ;
 int IRQ_INPROGRESS ;
 int IRQ_REPLAY ;
 int IRQ_WAITING ;
 int handle_IRQ_event (unsigned int,struct irqaction*) ;
 int kstat_incr_irqs_this_cpu (unsigned int,struct irq_desc*) ;
 int note_interrupt (unsigned int,struct irq_desc*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (unsigned int) ;
 int stub2 (unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void handle_prio_irq(unsigned int irq, struct irq_desc *desc)
{
 struct irqaction *action;
 irqreturn_t action_ret;

 spin_lock(&desc->lock);

 BUG_ON(desc->status & IRQ_INPROGRESS);

 desc->status &= ~(IRQ_REPLAY | IRQ_WAITING);
 kstat_incr_irqs_this_cpu(irq, desc);

 action = desc->action;
 if (unlikely(!action || (desc->status & IRQ_DISABLED)))
  goto out_mask;

 desc->status |= IRQ_INPROGRESS;
 spin_unlock(&desc->lock);

 action_ret = handle_IRQ_event(irq, action);




 note_interrupt(irq, desc, action_ret);

 spin_lock(&desc->lock);
 desc->status &= ~IRQ_INPROGRESS;

 if (desc->status & IRQ_DISABLED)
out_mask:
  desc->chip->mask(irq);


 desc->chip->ack(irq);

 spin_unlock(&desc->lock);
}
