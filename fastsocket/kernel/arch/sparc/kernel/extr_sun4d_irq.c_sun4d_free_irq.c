
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irqaction {void* dev_id; int flags; struct irqaction* next; int name; } ;
struct TYPE_2__ {struct irqaction* action; } ;


 int IRQF_SHARED ;
 int SA_STATIC_ALLOC ;
 int __disable_irq (unsigned int) ;
 struct irqaction** irq_action ;
 int irq_action_lock ;
 int kfree (struct irqaction*) ;
 int printk (char*,unsigned int,...) ;
 TYPE_1__* sbus_actions ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int synchronize_irq (unsigned int) ;

void sun4d_free_irq(unsigned int irq, void *dev_id)
{
 struct irqaction *action, **actionp;
 struct irqaction *tmp = ((void*)0);
        unsigned long flags;

 spin_lock_irqsave(&irq_action_lock, flags);
 if (irq < 15)
  actionp = irq + irq_action;
 else
  actionp = &(sbus_actions[irq - (1 << 5)].action);
 action = *actionp;
 if (!action) {
  printk("Trying to free free IRQ%d\n",irq);
  goto out_unlock;
 }
 if (dev_id) {
  for (; action; action = action->next) {
   if (action->dev_id == dev_id)
    break;
   tmp = action;
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

 if (action && tmp)
  tmp->next = action->next;
 else
  *actionp = action->next;

 spin_unlock_irqrestore(&irq_action_lock, flags);

 synchronize_irq(irq);

 spin_lock_irqsave(&irq_action_lock, flags);

 kfree(action);

 if (!(*actionp))
  __disable_irq(irq);

out_unlock:
 spin_unlock_irqrestore(&irq_action_lock, flags);
}
