
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* fcp_eq_hdl; } ;
struct lpfc_hba {int cfg_fcp_io_channel; TYPE_2__ sli4_hba; TYPE_3__* pcidev; } ;
struct TYPE_7__ {int irq; } ;
struct TYPE_5__ {int idx; struct lpfc_hba* phba; } ;


 int IRQF_SHARED ;
 int KERN_INFO ;
 int KERN_WARNING ;
 int LOG_INIT ;
 int LPFC_DRIVER_NAME ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,...) ;
 int lpfc_sli4_intr_handler ;
 int pci_disable_msi (TYPE_3__*) ;
 int pci_enable_msi (TYPE_3__*) ;
 int request_irq (int ,int ,int ,int ,struct lpfc_hba*) ;

__attribute__((used)) static int
lpfc_sli4_enable_msi(struct lpfc_hba *phba)
{
 int rc, index;

 rc = pci_enable_msi(phba->pcidev);
 if (!rc)
  lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
    "0487 PCI enable MSI mode success.\n");
 else {
  lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
    "0488 PCI enable MSI mode failed (%d)\n", rc);
  return rc;
 }

 rc = request_irq(phba->pcidev->irq, lpfc_sli4_intr_handler,
    IRQF_SHARED, LPFC_DRIVER_NAME, phba);
 if (rc) {
  pci_disable_msi(phba->pcidev);
  lpfc_printf_log(phba, KERN_WARNING, LOG_INIT,
    "0490 MSI request_irq failed (%d)\n", rc);
  return rc;
 }

 for (index = 0; index < phba->cfg_fcp_io_channel; index++) {
  phba->sli4_hba.fcp_eq_hdl[index].idx = index;
  phba->sli4_hba.fcp_eq_hdl[index].phba = phba;
 }

 return 0;
}
