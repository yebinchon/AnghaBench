
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ad7879 {int mutex; TYPE_1__* bus; scalar_t__ disabled; } ;
struct TYPE_2__ {int irq; } ;


 int ad7879_setup (struct ad7879*) ;
 int enable_irq (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ad7879_enable(struct ad7879 *ts)
{
 mutex_lock(&ts->mutex);

 if (ts->disabled) {
  ad7879_setup(ts);
  ts->disabled = 0;
  enable_irq(ts->bus->irq);
 }

 mutex_unlock(&ts->mutex);
}
