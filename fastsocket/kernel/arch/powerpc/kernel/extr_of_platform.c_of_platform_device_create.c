
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; int coherent_dma_mask; } ;
struct of_device {int dma_mask; TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int DMA_BIT_MASK (int) ;
 struct of_device* of_device_alloc (struct device_node*,char const*,struct device*) ;
 int of_device_free (struct of_device*) ;
 scalar_t__ of_device_register (struct of_device*) ;
 int of_platform_bus_type ;

struct of_device* of_platform_device_create(struct device_node *np,
         const char *bus_id,
         struct device *parent)
{
 struct of_device *dev;

 dev = of_device_alloc(np, bus_id, parent);
 if (!dev)
  return ((void*)0);

 dev->dma_mask = 0xffffffffUL;
 dev->dev.coherent_dma_mask = DMA_BIT_MASK(32);

 dev->dev.bus = &of_platform_bus_type;






 if (of_device_register(dev) != 0) {
  of_device_free(dev);
  return ((void*)0);
 }

 return dev;
}
