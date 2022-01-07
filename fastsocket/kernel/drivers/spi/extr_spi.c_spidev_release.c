
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {TYPE_1__* master; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* cleanup ) (struct spi_device*) ;} ;


 int kfree (struct device*) ;
 int spi_master_put (TYPE_1__*) ;
 int stub1 (struct spi_device*) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static void spidev_release(struct device *dev)
{
 struct spi_device *spi = to_spi_device(dev);


 if (spi->master->cleanup)
  spi->master->cleanup(spi);

 spi_master_put(spi->master);
 kfree(dev);
}
