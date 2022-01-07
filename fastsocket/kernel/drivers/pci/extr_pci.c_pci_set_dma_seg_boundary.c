
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int dma_set_seg_boundary (int *,unsigned long) ;

int pci_set_dma_seg_boundary(struct pci_dev *dev, unsigned long mask)
{
 return dma_set_seg_boundary(&dev->dev, mask);
}
