
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int dma_set_max_seg_size (int *,unsigned int) ;

int pci_set_dma_max_seg_size(struct pci_dev *dev, unsigned int size)
{
 return dma_set_max_seg_size(&dev->dev, size);
}
