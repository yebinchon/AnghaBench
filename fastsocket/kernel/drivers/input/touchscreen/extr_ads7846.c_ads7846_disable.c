
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ads7846 {int disabled; int irq_disabled; int lock; scalar_t__ pending; TYPE_1__* spi; } ;
struct TYPE_2__ {int irq; } ;


 int disable_irq (int ) ;
 int msleep (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void ads7846_disable(struct ads7846 *ts)
{
 if (ts->disabled)
  return;

 ts->disabled = 1;


 if (!ts->pending) {
  ts->irq_disabled = 1;
  disable_irq(ts->spi->irq);
 } else {



  while (ts->pending) {
   spin_unlock_irq(&ts->lock);
   msleep(1);
   spin_lock_irq(&ts->lock);
  }
 }




}
