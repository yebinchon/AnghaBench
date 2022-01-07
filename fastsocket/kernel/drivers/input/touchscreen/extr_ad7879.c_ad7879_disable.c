
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ad7879 {int disabled; int mutex; TYPE_1__* bus; int timer; int work; } ;
struct TYPE_2__ {int irq; } ;


 int AD7879_PM (int ) ;
 int AD7879_PM_SHUTDOWN ;
 int AD7879_REG_CTRL2 ;
 int ad7879_ts_event_release (struct ad7879*) ;
 int ad7879_write (TYPE_1__*,int ,int ) ;
 int cancel_work_sync (int *) ;
 scalar_t__ del_timer_sync (int *) ;
 int disable_irq (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ad7879_disable(struct ad7879 *ts)
{
 mutex_lock(&ts->mutex);

 if (!ts->disabled) {

  ts->disabled = 1;
  disable_irq(ts->bus->irq);

  cancel_work_sync(&ts->work);

  if (del_timer_sync(&ts->timer))
   ad7879_ts_event_release(ts);

  ad7879_write(ts->bus, AD7879_REG_CTRL2,
        AD7879_PM(AD7879_PM_SHUTDOWN));
 }

 mutex_unlock(&ts->mutex);
}
