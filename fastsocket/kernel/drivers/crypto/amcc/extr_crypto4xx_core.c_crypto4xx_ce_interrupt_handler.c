
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct crypto4xx_core_device {int tasklet; TYPE_1__* dev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ ce_base; } ;


 scalar_t__ CRYPTO4XX_INT_CLR ;
 int IRQ_HANDLED ;
 int PPC4XX_INTERRUPT_CLR ;
 struct crypto4xx_core_device* dev_get_drvdata (struct device*) ;
 int tasklet_schedule (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t crypto4xx_ce_interrupt_handler(int irq, void *data)
{
 struct device *dev = (struct device *)data;
 struct crypto4xx_core_device *core_dev = dev_get_drvdata(dev);

 if (core_dev->dev->ce_base == 0)
  return 0;

 writel(PPC4XX_INTERRUPT_CLR,
        core_dev->dev->ce_base + CRYPTO4XX_INT_CLR);
 tasklet_schedule(&core_dev->tasklet);

 return IRQ_HANDLED;
}
