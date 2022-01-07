
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int DMA_BIT_MASK (int) ;
 int EIO ;
 int dev_err (int *,char*) ;
 int pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;

__attribute__((used)) static int qlcnic_set_dma_mask(struct pci_dev *pdev, int *pci_using_dac)
{
 if (!pci_set_dma_mask(pdev, DMA_BIT_MASK(64)) &&
   !pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(64)))
  *pci_using_dac = 1;
 else if (!pci_set_dma_mask(pdev, DMA_BIT_MASK(32)) &&
   !pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(32)))
  *pci_using_dac = 0;
 else {
  dev_err(&pdev->dev, "Unable to set DMA mask, aborting\n");
  return -EIO;
 }

 return 0;
}
