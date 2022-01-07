
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct device_node* of_node; } ;
struct TYPE_4__ {TYPE_1__ archdata; int release; struct device* parent; int * dma_mask; } ;
struct of_device {TYPE_2__ dev; int dma_mask; int node; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int dev_set_name (TYPE_2__*,char const*) ;
 struct of_device* kzalloc (int,int ) ;
 int of_device_make_bus_id (struct of_device*) ;
 int of_node_get (struct device_node*) ;
 int of_release_dev ;

struct of_device *of_device_alloc(struct device_node *np,
      const char *bus_id,
      struct device *parent)
{
 struct of_device *dev;

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return ((void*)0);

 dev->node = of_node_get(np);
 dev->dev.dma_mask = &dev->dma_mask;
 dev->dev.parent = parent;
 dev->dev.release = of_release_dev;
 dev->dev.archdata.of_node = np;

 if (bus_id)
  dev_set_name(&dev->dev, bus_id);
 else
  of_device_make_bus_id(dev);

 return dev;
}
