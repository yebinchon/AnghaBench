
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int irq_handler_t ;


 int IOMUX_TO_IRQ (int ) ;
 int IRQF_DISABLED ;
 int IRQF_TRIGGER_FALLING ;
 int MX31_PIN_SCK6 ;
 int SDHC1_GPIO_DET ;
 int SDHC1_GPIO_WP ;
 int gpio_direction_input (int ) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;
 int request_irq (int ,int ,int,char*,void*) ;

__attribute__((used)) static int pcm970_sdhc1_init(struct device *dev, irq_handler_t detect_irq,
  void *data)
{
 int ret;

 ret = gpio_request(SDHC1_GPIO_DET, "sdhc-detect");
 if (ret)
  return ret;

 gpio_direction_input(SDHC1_GPIO_DET);
 ret = request_irq(IOMUX_TO_IRQ(MX31_PIN_SCK6), detect_irq,
   IRQF_DISABLED | IRQF_TRIGGER_FALLING,
    "sdhc-detect", data);
 if (ret)
  goto err_gpio_free_2;

 return 0;

err_gpio_free_2:




 gpio_free(SDHC1_GPIO_DET);

 return ret;
}
