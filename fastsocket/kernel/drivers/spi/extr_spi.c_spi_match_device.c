
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_driver {scalar_t__ id_table; } ;
struct spi_device {int modalias; } ;
struct device_driver {int name; } ;
struct device {int dummy; } ;


 int spi_match_id (scalar_t__,struct spi_device const*) ;
 scalar_t__ strcmp (int ,int ) ;
 struct spi_device* to_spi_device (struct device*) ;
 struct spi_driver* to_spi_driver (struct device_driver*) ;

__attribute__((used)) static int spi_match_device(struct device *dev, struct device_driver *drv)
{
 const struct spi_device *spi = to_spi_device(dev);
 const struct spi_driver *sdrv = to_spi_driver(drv);

 if (sdrv->id_table)
  return !!spi_match_id(sdrv->id_table, spi);

 return strcmp(spi->modalias, drv->name) == 0;
}
