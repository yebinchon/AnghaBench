
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pci_dev {int dev; } ;


 int dev_dbg (int *,char*,int ) ;
 int dma_set_coherent_mask (int *,int ) ;
 int fls64 (int ) ;

int
pci_set_consistent_dma_mask(struct pci_dev *dev, u64 mask)
{
 int ret = dma_set_coherent_mask(&dev->dev, mask);
 if (ret)
  return ret;

 dev_dbg(&dev->dev, "using %dbit consistent DMA mask\n", fls64(mask));
 return 0;
}
