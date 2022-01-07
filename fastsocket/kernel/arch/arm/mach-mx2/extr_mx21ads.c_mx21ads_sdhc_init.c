
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int irq_handler_t ;


 int IRQF_TRIGGER_FALLING ;
 int IRQ_GPIOD (int) ;
 int request_irq (int ,int ,int ,char*,void*) ;

__attribute__((used)) static int mx21ads_sdhc_init(struct device *dev, irq_handler_t detect_irq,
 void *data)
{
 int ret;

 ret = request_irq(IRQ_GPIOD(25), detect_irq,
  IRQF_TRIGGER_FALLING, "mmc-detect", data);
 if (ret)
  goto out;
 return 0;
out:
 return ret;
}
