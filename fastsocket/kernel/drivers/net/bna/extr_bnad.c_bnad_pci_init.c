
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct bnad {int dummy; } ;


 int BNAD_NAME ;
 int DMA_BIT_MASK (int) ;
 int dma_set_coherent_mask (int *,int ) ;
 int dma_set_mask (int *,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_set_master (struct pci_dev*) ;

__attribute__((used)) static int
bnad_pci_init(struct bnad *bnad,
       struct pci_dev *pdev, bool *using_dac)
{
 int err;

 err = pci_enable_device(pdev);
 if (err)
  return err;
 err = pci_request_regions(pdev, BNAD_NAME);
 if (err)
  goto disable_device;
 if (!dma_set_mask(&pdev->dev, DMA_BIT_MASK(64)) &&
     !dma_set_coherent_mask(&pdev->dev, DMA_BIT_MASK(64))) {
  *using_dac = 1;
 } else {
  err = dma_set_mask(&pdev->dev, DMA_BIT_MASK(32));
  if (err) {
   err = dma_set_coherent_mask(&pdev->dev,
          DMA_BIT_MASK(32));
   if (err)
    goto release_regions;
  }
  *using_dac = 0;
 }
 pci_set_master(pdev);
 return 0;

release_regions:
 pci_release_regions(pdev);
disable_device:
 pci_disable_device(pdev);

 return err;
}
