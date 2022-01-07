
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * dma_ops; } ;
struct TYPE_4__ {TYPE_1__ archdata; int * bus; } ;
struct of_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int ibmebus_bus_device ;
 int ibmebus_bus_type ;
 int ibmebus_dma_ops ;
 struct of_device* of_device_alloc (struct device_node*,int *,int *) ;
 int of_device_free (struct of_device*) ;
 int of_device_register (struct of_device*) ;

__attribute__((used)) static int ibmebus_create_device(struct device_node *dn)
{
 struct of_device *dev;
 int ret;

 dev = of_device_alloc(dn, ((void*)0), &ibmebus_bus_device);
 if (!dev)
  return -ENOMEM;

 dev->dev.bus = &ibmebus_bus_type;
 dev->dev.archdata.dma_ops = &ibmebus_dma_ops;

 ret = of_device_register(dev);
 if (ret) {
  of_device_free(dev);
  return ret;
 }

 return 0;
}
