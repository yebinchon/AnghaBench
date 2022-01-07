
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct TYPE_2__ {int dma_ops; } ;
struct device {TYPE_1__ archdata; } ;


 unsigned long BUS_NOTIFY_ADD_DEVICE ;
 int cell_dma_dev_setup (struct device*) ;
 int get_pci_dma_ops () ;

__attribute__((used)) static int cell_of_bus_notify(struct notifier_block *nb, unsigned long action,
         void *data)
{
 struct device *dev = data;


 if (action != BUS_NOTIFY_ADD_DEVICE)
  return 0;


 dev->archdata.dma_ops = get_pci_dma_ops();

 cell_dma_dev_setup(dev);

 return 0;
}
