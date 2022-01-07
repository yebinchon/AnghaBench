
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ad7877 {int mutex; TYPE_1__* spi; scalar_t__ disabled; } ;
struct TYPE_2__ {int irq; } ;


 int enable_irq (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ad7877_enable(struct ad7877 *ts)
{
 mutex_lock(&ts->mutex);

 if (ts->disabled) {
  ts->disabled = 0;
  enable_irq(ts->spi->irq);
 }

 mutex_unlock(&ts->mutex);
}
