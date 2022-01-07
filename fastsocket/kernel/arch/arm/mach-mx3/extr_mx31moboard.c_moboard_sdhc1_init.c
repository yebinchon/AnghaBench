
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int irq_handler_t ;


 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 int SDHC1_CD ;
 int SDHC1_WP ;
 int gpio_direction_input (int ) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;
 int gpio_to_irq (int ) ;
 int request_irq (int ,int ,int,char*,void*) ;

__attribute__((used)) static int moboard_sdhc1_init(struct device *dev, irq_handler_t detect_irq,
  void *data)
{
 int ret;

 ret = gpio_request(SDHC1_CD, "sdhc-detect");
 if (ret)
  return ret;

 gpio_direction_input(SDHC1_CD);

 ret = gpio_request(SDHC1_WP, "sdhc-wp");
 if (ret)
  goto err_gpio_free;
 gpio_direction_input(SDHC1_WP);

 ret = request_irq(gpio_to_irq(SDHC1_CD), detect_irq,
  IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING,
  "sdhc1-card-detect", data);
 if (ret)
  goto err_gpio_free_2;

 return 0;

err_gpio_free_2:
 gpio_free(SDHC1_WP);
err_gpio_free:
 gpio_free(SDHC1_CD);

 return ret;
}
