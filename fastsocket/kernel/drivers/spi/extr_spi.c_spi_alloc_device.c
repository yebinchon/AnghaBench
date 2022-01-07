
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct device* parent; } ;
struct spi_master {TYPE_1__ dev; } ;
struct TYPE_4__ {int release; int * bus; struct device* parent; } ;
struct spi_device {TYPE_2__ dev; struct spi_master* master; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int dev_err (struct device*,char*) ;
 int device_initialize (TYPE_2__*) ;
 struct spi_device* kzalloc (int,int ) ;
 int spi_bus_type ;
 int spi_master_get (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;
 int spidev_release ;

struct spi_device *spi_alloc_device(struct spi_master *master)
{
 struct spi_device *spi;
 struct device *dev = master->dev.parent;

 if (!spi_master_get(master))
  return ((void*)0);

 spi = kzalloc(sizeof *spi, GFP_KERNEL);
 if (!spi) {
  dev_err(dev, "cannot alloc spi_device\n");
  spi_master_put(master);
  return ((void*)0);
 }

 spi->master = master;
 spi->dev.parent = dev;
 spi->dev.bus = &spi_bus_type;
 spi->dev.release = spidev_release;
 device_initialize(&spi->dev);
 return spi;
}
