
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct dev_archdata {scalar_t__ max_direct_dma_addr; } ;
struct device {struct dev_archdata archdata; } ;


 unsigned long BUS_NOTIFY_ADD_DEVICE ;
 int NOTIFY_DONE ;
 scalar_t__ dma_get_mask (struct device*) ;
 scalar_t__ lmb_end_of_DRAM () ;
 int set_dma_ops (struct device*,int *) ;
 int swiotlb_dma_ops ;

__attribute__((used)) static int ppc_swiotlb_bus_notify(struct notifier_block *nb,
      unsigned long action, void *data)
{
 struct device *dev = data;
 struct dev_archdata *sd;


 if (action != BUS_NOTIFY_ADD_DEVICE)
  return 0;

 sd = &dev->archdata;
 sd->max_direct_dma_addr = 0;


 if (dma_get_mask(dev) < lmb_end_of_DRAM())
  set_dma_ops(dev, &swiotlb_dma_ops);

 return NOTIFY_DONE;
}
