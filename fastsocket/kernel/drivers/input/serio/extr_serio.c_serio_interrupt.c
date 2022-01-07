
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serio {int lock; scalar_t__ registered; TYPE_1__* drv; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* interrupt ) (struct serio*,unsigned char,unsigned int) ;} ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ likely (TYPE_1__*) ;
 int serio_rescan (struct serio*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct serio*,unsigned char,unsigned int) ;

irqreturn_t serio_interrupt(struct serio *serio,
  unsigned char data, unsigned int dfl)
{
 unsigned long flags;
 irqreturn_t ret = IRQ_NONE;

 spin_lock_irqsave(&serio->lock, flags);

        if (likely(serio->drv)) {
                ret = serio->drv->interrupt(serio, data, dfl);
 } else if (!dfl && serio->registered) {
  serio_rescan(serio);
  ret = IRQ_HANDLED;
 }

 spin_unlock_irqrestore(&serio->lock, flags);

 return ret;
}
