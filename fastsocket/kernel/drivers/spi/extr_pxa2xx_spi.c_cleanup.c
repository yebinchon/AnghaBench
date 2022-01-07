
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct chip_data {int gpio_cs; } ;


 int gpio_free (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int kfree (struct chip_data*) ;
 struct chip_data* spi_get_ctldata (struct spi_device*) ;

__attribute__((used)) static void cleanup(struct spi_device *spi)
{
 struct chip_data *chip = spi_get_ctldata(spi);

 if (!chip)
  return;

 if (gpio_is_valid(chip->gpio_cs))
  gpio_free(chip->gpio_cs);

 kfree(chip);
}
