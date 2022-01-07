
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irqaction {unsigned long flags; char const* name; void* dev_id; struct irqaction* next; scalar_t__ handler; } ;
typedef scalar_t__ irq_handler_t ;
struct TYPE_2__ {struct irqaction* action; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 unsigned long IRQF_DISABLED ;
 unsigned long IRQF_SHARED ;
 scalar_t__ MAX_STATIC_ALLOC ;
 int NR_IRQS ;
 unsigned long SA_STATIC_ALLOC ;
 int __enable_irq (unsigned int) ;
 int irq_action_lock ;
 struct irqaction* kmalloc (int,int ) ;
 int printk (char*,unsigned int,...) ;
 scalar_t__ sparc_cpu_model ;
 TYPE_1__* sparc_irq ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ static_irq_count ;
 struct irqaction* static_irqaction ;
 scalar_t__ sun4d ;

int request_irq(unsigned int irq,
  irq_handler_t handler,
  unsigned long irqflags, const char * devname, void *dev_id)
{
 struct irqaction * action, **actionp;
 unsigned long flags;
 unsigned int cpu_irq;
 int ret;

 if (sparc_cpu_model == sun4d) {
  extern int sun4d_request_irq(unsigned int,
          irq_handler_t ,
          unsigned long, const char *, void *);
  return sun4d_request_irq(irq, handler, irqflags, devname, dev_id);
 }
 cpu_irq = irq & (NR_IRQS - 1);
 if(cpu_irq > 14) {
  ret = -EINVAL;
  goto out;
 }
 if (!handler) {
  ret = -EINVAL;
  goto out;
 }

 spin_lock_irqsave(&irq_action_lock, flags);

 actionp = &sparc_irq[cpu_irq].action;
 action = *actionp;
 if (action) {
  if (!(action->flags & IRQF_SHARED) || !(irqflags & IRQF_SHARED)) {
   ret = -EBUSY;
   goto out_unlock;
  }
  if ((action->flags & IRQF_DISABLED) != (irqflags & IRQF_DISABLED)) {
   printk("Attempt to mix fast and slow interrupts on IRQ%d denied\n", irq);
   ret = -EBUSY;
   goto out_unlock;
  }
  for ( ; action; action = *actionp)
   actionp = &action->next;
 }




 if (irqflags & SA_STATIC_ALLOC) {
  if (static_irq_count < MAX_STATIC_ALLOC)
   action = &static_irqaction[static_irq_count++];
  else
   printk("Request for IRQ%d (%s) SA_STATIC_ALLOC failed using kmalloc\n", irq, devname);
 }

 if (action == ((void*)0))
  action = kmalloc(sizeof(struct irqaction),
           GFP_ATOMIC);

 if (!action) {
  ret = -ENOMEM;
  goto out_unlock;
 }

 action->handler = handler;
 action->flags = irqflags;
 action->name = devname;
 action->next = ((void*)0);
 action->dev_id = dev_id;

 *actionp = action;

 __enable_irq(irq);

 ret = 0;
out_unlock:
 spin_unlock_irqrestore(&irq_action_lock, flags);
out:
 return ret;
}
