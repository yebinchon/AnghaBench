
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int dummy; } ;
struct s3c2410_spigpio {TYPE_1__* info; } ;
struct TYPE_2__ {int (* chip_select ) (TYPE_1__*,int) ;} ;


 struct s3c2410_spigpio* spidev_to_sg (struct spi_device*) ;
 int stub1 (TYPE_1__*,int) ;

__attribute__((used)) static void s3c2410_spigpio_chipselect(struct spi_device *dev, int value)
{
 struct s3c2410_spigpio *sg = spidev_to_sg(dev);

 if (sg->info && sg->info->chip_select)
  (sg->info->chip_select)(sg->info, value);
}
