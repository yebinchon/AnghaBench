
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int coherent_dma_mask; } ;
struct pci_dev {int dma_mask; TYPE_1__ dev; } ;


 int dma_set_mask (TYPE_1__*,int ) ;

int pci_set_consistent_dma_mask(struct pci_dev *dev, u64 mask)
{
 int rc;

 rc = dma_set_mask(&dev->dev, mask);
 dev->dev.coherent_dma_mask = dev->dma_mask;

 return rc;
}
