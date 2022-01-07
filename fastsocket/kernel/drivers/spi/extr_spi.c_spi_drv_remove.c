
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_driver {int (* remove ) (int ) ;} ;
struct device {int driver; } ;


 int stub1 (int ) ;
 int to_spi_device (struct device*) ;
 struct spi_driver* to_spi_driver (int ) ;

__attribute__((used)) static int spi_drv_remove(struct device *dev)
{
 const struct spi_driver *sdrv = to_spi_driver(dev->driver);

 return sdrv->remove(to_spi_device(dev));
}
