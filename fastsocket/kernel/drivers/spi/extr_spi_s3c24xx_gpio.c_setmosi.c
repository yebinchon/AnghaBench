
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int dummy; } ;
struct s3c2410_spigpio {TYPE_1__* info; } ;
struct TYPE_2__ {int pin_mosi; } ;


 int s3c2410_gpio_setpin (int ,int) ;
 struct s3c2410_spigpio* spidev_to_sg (struct spi_device*) ;

__attribute__((used)) static inline void setmosi(struct spi_device *dev, int on)
{
 struct s3c2410_spigpio *sg = spidev_to_sg(dev);
 s3c2410_gpio_setpin(sg->info->pin_mosi, on ? 1 : 0);
}
