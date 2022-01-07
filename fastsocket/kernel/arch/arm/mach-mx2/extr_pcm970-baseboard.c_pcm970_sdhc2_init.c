
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int irq_handler_t ;


 scalar_t__ GPIO_PORTC ;
 int IRQF_TRIGGER_FALLING ;
 int IRQ_GPIOC (int) ;
 int free_irq (int ,void*) ;
 int gpio_direction_input (scalar_t__) ;
 int gpio_request (scalar_t__,char*) ;
 int request_irq (int ,int ,int ,char*,void*) ;

__attribute__((used)) static int pcm970_sdhc2_init(struct device *dev, irq_handler_t detect_irq, void *data)
{
 int ret;

 ret = request_irq(IRQ_GPIOC(29), detect_irq, IRQF_TRIGGER_FALLING,
    "imx-mmc-detect", data);
 if (ret)
  return ret;

 ret = gpio_request(GPIO_PORTC + 28, "imx-mmc-ro");
 if (ret) {
  free_irq(IRQ_GPIOC(29), data);
  return ret;
 }

 gpio_direction_input(GPIO_PORTC + 28);

 return 0;
}
