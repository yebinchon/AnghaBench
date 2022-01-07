
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irqaction {void* dev_id; int flags; struct irqaction* next; int name; int handler; } ;
struct TYPE_2__ {struct irqaction* action; } ;


 int IRQF_SHARED ;
 int NR_IRQS ;
 int SA_STATIC_ALLOC ;
 int __disable_irq (unsigned int) ;
 int irq_action_lock ;
 int kfree (struct irqaction*) ;
 int printk (char*,unsigned int,...) ;
 scalar_t__ sparc_cpu_model ;
 TYPE_1__* sparc_irq ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ sun4d ;
 int synchronize_irq (unsigned int) ;

void free_irq(unsigned int irq, void *dev_id)
{
 struct irqaction * action;
 struct irqaction **actionp;
        unsigned long flags;
 unsigned int cpu_irq;

 if (sparc_cpu_model == sun4d) {
  extern void sun4d_free_irq(unsigned int, void *);

  sun4d_free_irq(irq, dev_id);
  return;
 }
 cpu_irq = irq & (NR_IRQS - 1);
        if (cpu_irq > 14) {
                printk("Trying to free bogus IRQ %d\n", irq);
                return;
        }

 spin_lock_irqsave(&irq_action_lock, flags);

 actionp = &sparc_irq[cpu_irq].action;
 action = *actionp;

 if (!action->handler) {
  printk("Trying to free free IRQ%d\n",irq);
  goto out_unlock;
 }
 if (dev_id) {
  for (; action; action = action->next) {
   if (action->dev_id == dev_id)
    break;
   actionp = &action->next;
  }
  if (!action) {
   printk("Trying to free free shared IRQ%d\n",irq);
   goto out_unlock;
  }
 } else if (action->flags & IRQF_SHARED) {
  printk("Trying to free shared IRQ%d with NULL device ID\n", irq);
  goto out_unlock;
 }
 if (action->flags & SA_STATIC_ALLOC)
 {



  printk("Attempt to free statically allocated IRQ%d (%s)\n",
         irq, action->name);
  goto out_unlock;
 }

 *actionp = action->next;

 spin_unlock_irqrestore(&irq_action_lock, flags);

 synchronize_irq(irq);

 spin_lock_irqsave(&irq_action_lock, flags);

 kfree(action);

 if (!sparc_irq[cpu_irq].action)
  __disable_irq(irq);

out_unlock:
 spin_unlock_irqrestore(&irq_action_lock, flags);
}
