
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_adapter {void* hw_addr0; void* hw_addr1; struct pci_dev* pdev; } ;
struct pci_dev {int dev; } ;


 int DMA_BIT_MASK (int) ;
 int EIO ;
 int dev_err (int *,char*,...) ;
 void* ioremap (unsigned long,unsigned long) ;
 int iounmap (void*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_release_selected_regions (struct pci_dev*,int) ;
 int pci_request_selected_regions (struct pci_dev*,int,int ) ;
 unsigned long pci_resource_len (struct pci_dev*,int) ;
 unsigned long pci_resource_start (struct pci_dev*,int) ;
 scalar_t__ pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 scalar_t__ pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_master (struct pci_dev*) ;
 int vmxnet3_driver_name ;

__attribute__((used)) static int
vmxnet3_alloc_pci_resources(struct vmxnet3_adapter *adapter, bool *dma64)
{
 int err;
 unsigned long mmio_start, mmio_len;
 struct pci_dev *pdev = adapter->pdev;

 err = pci_enable_device(pdev);
 if (err) {
  dev_err(&pdev->dev, "Failed to enable adapter: error %d\n", err);
  return err;
 }

 if (pci_set_dma_mask(pdev, DMA_BIT_MASK(64)) == 0) {
  if (pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(64)) != 0) {
   dev_err(&pdev->dev,
    "pci_set_consistent_dma_mask failed\n");
   err = -EIO;
   goto err_set_mask;
  }
  *dma64 = 1;
 } else {
  if (pci_set_dma_mask(pdev, DMA_BIT_MASK(32)) != 0) {
   dev_err(&pdev->dev,
    "pci_set_dma_mask failed\n");
   err = -EIO;
   goto err_set_mask;
  }
  *dma64 = 0;
 }

 err = pci_request_selected_regions(pdev, (1 << 2) - 1,
        vmxnet3_driver_name);
 if (err) {
  dev_err(&pdev->dev,
   "Failed to request region for adapter: error %d\n", err);
  goto err_set_mask;
 }

 pci_set_master(pdev);

 mmio_start = pci_resource_start(pdev, 0);
 mmio_len = pci_resource_len(pdev, 0);
 adapter->hw_addr0 = ioremap(mmio_start, mmio_len);
 if (!adapter->hw_addr0) {
  dev_err(&pdev->dev, "Failed to map bar0\n");
  err = -EIO;
  goto err_ioremap;
 }

 mmio_start = pci_resource_start(pdev, 1);
 mmio_len = pci_resource_len(pdev, 1);
 adapter->hw_addr1 = ioremap(mmio_start, mmio_len);
 if (!adapter->hw_addr1) {
  dev_err(&pdev->dev, "Failed to map bar1\n");
  err = -EIO;
  goto err_bar1;
 }
 return 0;

err_bar1:
 iounmap(adapter->hw_addr0);
err_ioremap:
 pci_release_selected_regions(pdev, (1 << 2) - 1);
err_set_mask:
 pci_disable_device(pdev);
 return err;
}
