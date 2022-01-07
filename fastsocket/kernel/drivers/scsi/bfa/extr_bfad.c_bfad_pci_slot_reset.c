
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dev; } ;
struct bfad_s {int bfad_flags; int pcidev; } ;
typedef int pci_ers_result_t ;


 int DMA_BIT_MASK (int) ;
 int KERN_ERR ;
 int KERN_WARNING ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 int dev_printk (int ,int *,char*,...) ;
 int pci_cleanup_aer_uncorrect_error_status (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 int pci_enable_pcie_error_reporting (struct pci_dev*) ;
 struct bfad_s* pci_get_drvdata (struct pci_dev*) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 scalar_t__ pci_set_dma_mask (int ,int ) ;
 int pci_set_master (struct pci_dev*) ;
 int restart_bfa (struct bfad_s*) ;

__attribute__((used)) static pci_ers_result_t
bfad_pci_slot_reset(struct pci_dev *pdev)
{
 struct bfad_s *bfad = pci_get_drvdata(pdev);
 u8 byte;

 dev_printk(KERN_ERR, &pdev->dev,
     "bfad_pci_slot_reset flags: 0x%x\n", bfad->bfad_flags);

 if (pci_enable_device(pdev)) {
  dev_printk(KERN_ERR, &pdev->dev, "Cannot re-enable "
      "PCI device after reset.\n");
  return PCI_ERS_RESULT_DISCONNECT;
 }

 pci_restore_state(pdev);






 pci_read_config_byte(pdev, 0x68, &byte);
 if (byte == 0xff) {
  dev_printk(KERN_ERR, &pdev->dev,
      "slot_reset failed ... got another PCI error !\n");
  goto out_disable_device;
 }

 pci_save_state(pdev);
 pci_set_master(pdev);

 if (pci_set_dma_mask(bfad->pcidev, DMA_BIT_MASK(64)) != 0)
  if (pci_set_dma_mask(bfad->pcidev, DMA_BIT_MASK(32)) != 0)
   goto out_disable_device;

 pci_cleanup_aer_uncorrect_error_status(pdev);

 if (restart_bfa(bfad) == -1)
  goto out_disable_device;

 pci_enable_pcie_error_reporting(pdev);
 dev_printk(KERN_WARNING, &pdev->dev,
     "slot_reset completed  flags: 0x%x!\n", bfad->bfad_flags);

 return PCI_ERS_RESULT_RECOVERED;

out_disable_device:
 pci_disable_device(pdev);
 return PCI_ERS_RESULT_DISCONNECT;
}
