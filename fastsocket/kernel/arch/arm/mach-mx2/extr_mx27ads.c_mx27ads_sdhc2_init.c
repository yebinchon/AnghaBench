
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int irq_handler_t ;


 int IRQF_TRIGGER_RISING ;
 int IRQ_GPIOB (int) ;
 int request_irq (int ,int ,int ,char*,void*) ;

__attribute__((used)) static int mx27ads_sdhc2_init(struct device *dev, irq_handler_t detect_irq,
         void *data)
{
 return request_irq(IRQ_GPIOB(7), detect_irq, IRQF_TRIGGER_RISING,
      "sdhc2-card-detect", data);
}
