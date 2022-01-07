
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pci_dev {int dev; } ;


 int dma_set_mask (int *,int ) ;

int pci_set_dma_mask(struct pci_dev *dev, u64 mask)
{
 return dma_set_mask(&dev->dev, mask);
}
