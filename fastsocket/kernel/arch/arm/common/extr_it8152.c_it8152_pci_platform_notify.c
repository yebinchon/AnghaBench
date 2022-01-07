
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int* dma_mask; int coherent_dma_mask; int * bus; } ;


 int PHYS_OFFSET ;
 int SZ_64M ;
 int dmabounce_register_dev (struct device*,int,int) ;
 int pci_bus_type ;

__attribute__((used)) static int it8152_pci_platform_notify(struct device *dev)
{
 if (dev->bus == &pci_bus_type) {
  if (dev->dma_mask)
   *dev->dma_mask = (SZ_64M - 1) | PHYS_OFFSET;
  dev->coherent_dma_mask = (SZ_64M - 1) | PHYS_OFFSET;
  dmabounce_register_dev(dev, 2048, 4096);
 }
 return 0;
}
