
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device {int * dma_mask; int * bus; } ;


 int BUG_ON (int) ;
 int pci_bus_type ;
 int sn_dma_supported (struct device*,int ) ;

int sn_dma_set_mask(struct device *dev, u64 dma_mask)
{
 BUG_ON(dev->bus != &pci_bus_type);

 if (!sn_dma_supported(dev, dma_mask))
  return 0;

 *dev->dma_mask = dma_mask;
 return 1;
}
