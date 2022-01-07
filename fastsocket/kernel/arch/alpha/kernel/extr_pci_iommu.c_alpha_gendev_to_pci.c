
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ dma_mask; } ;
struct device {scalar_t__* dma_mask; int * bus; } ;


 int BUG_ON (int) ;
 struct pci_dev* isa_bridge ;
 int pci_bus_type ;
 struct pci_dev* to_pci_dev (struct device*) ;

struct pci_dev *
alpha_gendev_to_pci(struct device *dev)
{
 if (dev && dev->bus == &pci_bus_type)
  return to_pci_dev(dev);



 BUG_ON(!isa_bridge);



 if (!dev || !dev->dma_mask || !*dev->dma_mask)
  return isa_bridge;



 if (*dev->dma_mask >= isa_bridge->dma_mask)
  return isa_bridge;


 return ((void*)0);
}
