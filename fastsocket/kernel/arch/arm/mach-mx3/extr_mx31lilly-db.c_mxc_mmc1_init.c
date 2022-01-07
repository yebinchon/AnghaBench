
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int irq_handler_t ;


 int IOMUX_TO_GPIO (int ) ;
 int IOMUX_TO_IRQ (int ) ;
 int IRQF_DISABLED ;
 int IRQF_TRIGGER_FALLING ;
 int MX31_PIN_GPIO1_1 ;
 int MX31_PIN_LCS0 ;
 int gpio_det ;
 int gpio_direction_input (int ) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;
 int gpio_wp ;
 int request_irq (int ,int ,int,char*,void*) ;

__attribute__((used)) static int mxc_mmc1_init(struct device *dev,
    irq_handler_t detect_irq, void *data)
{
 int ret;

 gpio_det = IOMUX_TO_GPIO(MX31_PIN_GPIO1_1);
 gpio_wp = IOMUX_TO_GPIO(MX31_PIN_LCS0);

 ret = gpio_request(gpio_det, "MMC detect");
 if (ret)
  return ret;

 ret = gpio_request(gpio_wp, "MMC w/p");
 if (ret)
  goto exit_free_det;

 gpio_direction_input(gpio_det);
 gpio_direction_input(gpio_wp);

 ret = request_irq(IOMUX_TO_IRQ(MX31_PIN_GPIO1_1), detect_irq,
     IRQF_DISABLED | IRQF_TRIGGER_FALLING,
     "MMC detect", data);
 if (ret)
  goto exit_free_wp;

 return 0;

exit_free_wp:
 gpio_free(gpio_wp);

exit_free_det:
 gpio_free(gpio_det);

 return ret;
}
