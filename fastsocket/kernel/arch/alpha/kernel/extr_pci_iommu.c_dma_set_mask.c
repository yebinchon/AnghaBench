
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device {int * dma_mask; } ;


 int EIO ;
 int alpha_gendev_to_pci (struct device*) ;
 int pci_dma_supported (int ,int ) ;

int
dma_set_mask(struct device *dev, u64 mask)
{
 if (!dev->dma_mask ||
     !pci_dma_supported(alpha_gendev_to_pci(dev), mask))
  return -EIO;

 *dev->dma_mask = mask;

 return 0;
}
