
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int DMA_BIT_MASK (int) ;
 int pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;

__attribute__((used)) static int stex_set_dma_mask(struct pci_dev * pdev)
{
 int ret;

 if (!pci_set_dma_mask(pdev, DMA_BIT_MASK(64))
  && !pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(64)))
  return 0;
 ret = pci_set_dma_mask(pdev, DMA_BIT_MASK(32));
 if (!ret)
  ret = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(32));
 return ret;
}
