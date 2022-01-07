
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int irq_handler_t ;


 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 int SDHC2_CD ;
 int SDHC2_WP ;
 int gpio_direction_input (int ) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;
 int gpio_to_irq (int ) ;
 int request_irq (int ,int ,int,char*,void*) ;

__attribute__((used)) static int devboard_sdhc2_init(struct device *dev, irq_handler_t detect_irq,
  void *data)
{
 int ret;

 ret = gpio_request(SDHC2_CD, "sdhc-detect");
 if (ret)
  return ret;

 gpio_direction_input(SDHC2_CD);

 ret = gpio_request(SDHC2_WP, "sdhc-wp");
 if (ret)
  goto err_gpio_free;
 gpio_direction_input(SDHC2_WP);

 ret = request_irq(gpio_to_irq(SDHC2_CD), detect_irq,
  IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING,
  "sdhc2-card-detect", data);
 if (ret)
  goto err_gpio_free_2;

 return 0;

err_gpio_free_2:
 gpio_free(SDHC2_WP);
err_gpio_free:
 gpio_free(SDHC2_CD);

 return ret;
}
