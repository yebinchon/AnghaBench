
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7877 {int lock; int timer; scalar_t__ pending; } ;


 scalar_t__ TS_PEN_UP_TIMEOUT ;
 int ad7877_rx (struct ad7877*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void ad7877_callback(void *_ts)
{
 struct ad7877 *ts = _ts;

 spin_lock_irq(&ts->lock);

 ad7877_rx(ts);
 ts->pending = 0;
 mod_timer(&ts->timer, jiffies + TS_PEN_UP_TIMEOUT);

 spin_unlock_irq(&ts->lock);
}
