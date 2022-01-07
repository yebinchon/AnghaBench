
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_mmc_spi {int* alow_gpios; int * gpios; } ;
struct device {int dummy; } ;


 int gpio_get_value (int ) ;
 struct of_mmc_spi* to_of_mmc_spi (struct device*) ;

__attribute__((used)) static int of_mmc_spi_read_gpio(struct device *dev, int gpio_num)
{
 struct of_mmc_spi *oms = to_of_mmc_spi(dev);
 bool active_low = oms->alow_gpios[gpio_num];
 bool value = gpio_get_value(oms->gpios[gpio_num]);

 return active_low ^ value;
}
