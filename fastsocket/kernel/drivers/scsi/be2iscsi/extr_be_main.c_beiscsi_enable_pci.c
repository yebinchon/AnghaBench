
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int DMA_BIT_MASK (int) ;
 int dev_err (int *,char*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 int pci_set_master (struct pci_dev*) ;

__attribute__((used)) static int beiscsi_enable_pci(struct pci_dev *pcidev)
{
 int ret;

 ret = pci_enable_device(pcidev);
 if (ret) {
  dev_err(&pcidev->dev,
   "beiscsi_enable_pci - enable device failed\n");
  return ret;
 }

 pci_set_master(pcidev);
 if (pci_set_consistent_dma_mask(pcidev, DMA_BIT_MASK(64))) {
  ret = pci_set_consistent_dma_mask(pcidev, DMA_BIT_MASK(32));
  if (ret) {
   dev_err(&pcidev->dev, "Could not set PCI DMA Mask\n");
   pci_disable_device(pcidev);
   return ret;
  }
 }
 return 0;
}
