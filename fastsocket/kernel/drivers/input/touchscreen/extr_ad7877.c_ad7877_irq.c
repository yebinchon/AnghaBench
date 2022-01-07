
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ad7877 {int pending; int lock; TYPE_1__* spi; int msg; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 int dev_err (int *,char*,int) ;
 int spi_async (TYPE_1__*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t ad7877_irq(int irq, void *handle)
{
 struct ad7877 *ts = handle;
 unsigned long flags;
 int status;
 spin_lock_irqsave(&ts->lock, flags);
 if (!ts->pending) {
  ts->pending = 1;

  status = spi_async(ts->spi, &ts->msg);
  if (status)
   dev_err(&ts->spi->dev, "spi_sync --> %d\n", status);
 }
 spin_unlock_irqrestore(&ts->lock, flags);

 return IRQ_HANDLED;
}
