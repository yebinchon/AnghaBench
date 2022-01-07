
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; int * class; } ;
struct spi_master {TYPE_1__ dev; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int device_initialize (TYPE_1__*) ;
 int get_device (struct device*) ;
 struct spi_master* kzalloc (unsigned int,int ) ;
 int spi_master_class ;
 int spi_master_set_devdata (struct spi_master*,struct spi_master*) ;

struct spi_master *spi_alloc_master(struct device *dev, unsigned size)
{
 struct spi_master *master;

 if (!dev)
  return ((void*)0);

 master = kzalloc(size + sizeof *master, GFP_KERNEL);
 if (!master)
  return ((void*)0);

 device_initialize(&master->dev);
 master->dev.class = &spi_master_class;
 master->dev.parent = get_device(dev);
 spi_master_set_devdata(master, &master[1]);

 return master;
}
