
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* dma_mask; int coherent_dma_mask; int * bus; struct device* parent; } ;
struct TYPE_3__ {int hw_type; } ;
struct parisc_device {char hw_path; int dma_mask; TYPE_2__ dev; TYPE_1__ id; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int HPHW_FAULTY ;
 scalar_t__ device_register (TYPE_2__*) ;
 int kfree (struct parisc_device*) ;
 struct parisc_device* kzalloc (int,int ) ;
 int parisc_bus_type ;
 int setup_bus_id (struct parisc_device*) ;

struct parisc_device * create_tree_node(char id, struct device *parent)
{
 struct parisc_device *dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return ((void*)0);

 dev->hw_path = id;
 dev->id.hw_type = HPHW_FAULTY;

 dev->dev.parent = parent;
 setup_bus_id(dev);

 dev->dev.bus = &parisc_bus_type;
 dev->dma_mask = 0xffffffffUL;


 dev->dev.dma_mask = &dev->dma_mask;
 dev->dev.coherent_dma_mask = dev->dma_mask;
 if (device_register(&dev->dev)) {
  kfree(dev);
  return ((void*)0);
 }

 return dev;
}
