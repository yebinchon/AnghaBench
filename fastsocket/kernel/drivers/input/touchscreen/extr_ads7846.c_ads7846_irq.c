
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ads7846 {int irq_disabled; int pending; int lock; int timer; TYPE_1__* spi; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int irq; } ;


 int HRTIMER_MODE_REL ;
 int IRQ_HANDLED ;
 int TS_POLL_DELAY ;
 int disable_irq_nosync (int ) ;
 int get_pendown_state (struct ads7846*) ;
 int hrtimer_start (int *,int ,int ) ;
 int ktime_set (int ,int ) ;
 scalar_t__ likely (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t ads7846_irq(int irq, void *handle)
{
 struct ads7846 *ts = handle;
 unsigned long flags;

 spin_lock_irqsave(&ts->lock, flags);
 if (likely(get_pendown_state(ts))) {
  if (!ts->irq_disabled) {





   ts->irq_disabled = 1;
   disable_irq_nosync(ts->spi->irq);
   ts->pending = 1;
   hrtimer_start(&ts->timer, ktime_set(0, TS_POLL_DELAY),
     HRTIMER_MODE_REL);
  }
 }
 spin_unlock_irqrestore(&ts->lock, flags);

 return IRQ_HANDLED;
}
