
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00_irq {void (* fn ) (int,void*) ;void* devid; } ;
struct ucb1x00 {int lock; struct ucb1x00_irq* irq_handler; } ;


 int EBUSY ;
 int EINVAL ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int ucb1x00_hook_irq(struct ucb1x00 *ucb, unsigned int idx, void (*fn)(int, void *), void *devid)
{
 struct ucb1x00_irq *irq;
 int ret = -EINVAL;

 if (idx < 16) {
  irq = ucb->irq_handler + idx;
  ret = -EBUSY;

  spin_lock_irq(&ucb->lock);
  if (irq->fn == ((void*)0)) {
   irq->devid = devid;
   irq->fn = fn;
   ret = 0;
  }
  spin_unlock_irq(&ucb->lock);
 }
 return ret;
}
