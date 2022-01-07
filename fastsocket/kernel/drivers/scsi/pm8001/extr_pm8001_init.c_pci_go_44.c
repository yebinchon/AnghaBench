
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int DMA_BIT_MASK (int) ;
 int KERN_ERR ;
 int dev_printk (int ,int *,char*) ;
 int pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;

__attribute__((used)) static int pci_go_44(struct pci_dev *pdev)
{
 int rc;

 if (!pci_set_dma_mask(pdev, DMA_BIT_MASK(44))) {
  rc = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(44));
  if (rc) {
   rc = pci_set_consistent_dma_mask(pdev,
    DMA_BIT_MASK(32));
   if (rc) {
    dev_printk(KERN_ERR, &pdev->dev,
     "44-bit DMA enable failed\n");
    return rc;
   }
  }
 } else {
  rc = pci_set_dma_mask(pdev, DMA_BIT_MASK(32));
  if (rc) {
   dev_printk(KERN_ERR, &pdev->dev,
    "32-bit DMA enable failed\n");
   return rc;
  }
  rc = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(32));
  if (rc) {
   dev_printk(KERN_ERR, &pdev->dev,
    "32-bit consistent DMA enable failed\n");
   return rc;
  }
 }
 return rc;
}
