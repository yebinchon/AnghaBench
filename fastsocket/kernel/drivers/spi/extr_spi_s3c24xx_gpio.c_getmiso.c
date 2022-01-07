
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spi_device {int dummy; } ;
struct s3c2410_spigpio {TYPE_1__* info; } ;
struct TYPE_2__ {int pin_miso; } ;


 scalar_t__ s3c2410_gpio_getpin (int ) ;
 struct s3c2410_spigpio* spidev_to_sg (struct spi_device*) ;

__attribute__((used)) static inline u32 getmiso(struct spi_device *dev)
{
 struct s3c2410_spigpio *sg = spidev_to_sg(dev);
 return s3c2410_gpio_getpin(sg->info->pin_miso) ? 1 : 0;
}
