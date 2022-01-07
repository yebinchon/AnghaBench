
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ads7846 {TYPE_1__* spi; scalar_t__ irq_disabled; scalar_t__ disabled; } ;
struct TYPE_2__ {int irq; } ;


 int enable_irq (int ) ;

__attribute__((used)) static void ads7846_enable(struct ads7846 *ts)
{
 if (!ts->disabled)
  return;

 ts->disabled = 0;
 ts->irq_disabled = 0;
 enable_irq(ts->spi->irq);
}
