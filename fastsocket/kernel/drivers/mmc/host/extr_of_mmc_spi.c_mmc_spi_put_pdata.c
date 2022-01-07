
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * platform_data; int archdata; } ;
struct spi_device {struct device dev; } ;
struct of_mmc_spi {int * gpios; } ;
struct device_node {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 struct device_node* dev_archdata_get_node (int *) ;
 int gpio_free (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int kfree (struct of_mmc_spi*) ;
 struct of_mmc_spi* to_of_mmc_spi (struct device*) ;

void mmc_spi_put_pdata(struct spi_device *spi)
{
 struct device *dev = &spi->dev;
 struct device_node *np = dev_archdata_get_node(&dev->archdata);
 struct of_mmc_spi *oms = to_of_mmc_spi(dev);
 int i;

 if (!dev->platform_data || !np)
  return;

 for (i = 0; i < ARRAY_SIZE(oms->gpios); i++) {
  if (gpio_is_valid(oms->gpios[i]))
   gpio_free(oms->gpios[i]);
 }
 kfree(oms);
 dev->platform_data = ((void*)0);
}
