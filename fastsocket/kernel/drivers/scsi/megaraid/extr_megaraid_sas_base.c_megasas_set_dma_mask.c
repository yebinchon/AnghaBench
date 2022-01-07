
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int DMA_BIT_MASK (int) ;
 scalar_t__ IS_DMA64 ;
 scalar_t__ pci_set_dma_mask (struct pci_dev*,int ) ;

__attribute__((used)) static int
megasas_set_dma_mask(struct pci_dev *pdev)
{



 if (IS_DMA64) {
  if (pci_set_dma_mask(pdev, DMA_BIT_MASK(64)) != 0) {

   if (pci_set_dma_mask(pdev, DMA_BIT_MASK(32)) != 0)
    goto fail_set_dma_mask;
  }
 } else {
  if (pci_set_dma_mask(pdev, DMA_BIT_MASK(32)) != 0)
   goto fail_set_dma_mask;
 }
 return 0;

fail_set_dma_mask:
 return 1;
}
