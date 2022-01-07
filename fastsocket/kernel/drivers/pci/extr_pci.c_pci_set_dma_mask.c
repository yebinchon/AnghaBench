
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pci_dev {int dma_mask; } ;


 int EIO ;
 int pci_dma_supported (struct pci_dev*,int ) ;

int
pci_set_dma_mask(struct pci_dev *dev, u64 mask)
{
 if (!pci_dma_supported(dev, mask))
  return -EIO;

 dev->dma_mask = mask;

 return 0;
}
