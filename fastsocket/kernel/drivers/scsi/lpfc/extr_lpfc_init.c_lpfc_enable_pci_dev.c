
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int needs_freset; } ;
struct lpfc_hba {struct pci_dev* pcidev; } ;


 int ENODEV ;
 int IORESOURCE_MEM ;
 int KERN_ERR ;
 int LOG_INIT ;
 int LPFC_DRIVER_NAME ;
 int PCI_CAP_ID_EXP ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int) ;
 int pci_disable_device (struct pci_dev*) ;
 scalar_t__ pci_enable_device_mem (struct pci_dev*) ;
 scalar_t__ pci_find_capability (struct pci_dev*,int ) ;
 scalar_t__ pci_request_selected_regions (struct pci_dev*,int,int ) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_select_bars (struct pci_dev*,int ) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_try_set_mwi (struct pci_dev*) ;

__attribute__((used)) static int
lpfc_enable_pci_dev(struct lpfc_hba *phba)
{
 struct pci_dev *pdev;
 int bars = 0;


 if (!phba->pcidev)
  goto out_error;
 else
  pdev = phba->pcidev;

 bars = pci_select_bars(pdev, IORESOURCE_MEM);

 if (pci_enable_device_mem(pdev))
  goto out_error;

 if (pci_request_selected_regions(pdev, bars, LPFC_DRIVER_NAME))
  goto out_disable_device;

 pci_set_master(pdev);
 pci_try_set_mwi(pdev);
 pci_save_state(pdev);


 if (pci_find_capability(pdev, PCI_CAP_ID_EXP))
  pdev->needs_freset = 1;

 return 0;

out_disable_device:
 pci_disable_device(pdev);
out_error:
 lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
   "1401 Failed to enable pci device, bars:x%x\n", bars);
 return -ENODEV;
}
