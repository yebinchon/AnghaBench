
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pm8001_hba_info {int shost; struct pci_dev* pdev; } ;
struct pci_dev {int irq; } ;


 int DRV_NAME ;
 int IRQF_SHARED ;
 int PCI_CAP_ID_MSIX ;
 int PM8001_INIT_DBG (struct pm8001_hba_info*,int ) ;
 int SHOST_TO_SAS_HA (int ) ;
 scalar_t__ pci_find_capability (struct pci_dev*,int ) ;
 int pm8001_interrupt_handler_intx ;
 int pm8001_printk (char*) ;
 int pm8001_setup_msix (struct pm8001_hba_info*) ;
 int request_irq (int ,int ,int ,int ,int ) ;

__attribute__((used)) static u32 pm8001_request_irq(struct pm8001_hba_info *pm8001_ha)
{
 struct pci_dev *pdev;
 int rc;

 pdev = pm8001_ha->pdev;
intx:

 rc = request_irq(pdev->irq, pm8001_interrupt_handler_intx, IRQF_SHARED,
  DRV_NAME, SHOST_TO_SAS_HA(pm8001_ha->shost));
 return rc;
}
