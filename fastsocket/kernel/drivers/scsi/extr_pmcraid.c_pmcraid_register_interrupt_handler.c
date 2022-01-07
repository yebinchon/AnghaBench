
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int host_ioa_interrupt_reg; } ;
struct pmcraid_instance {int num_hrrq; int interrupt_mode; TYPE_2__* hrrq_vector; TYPE_1__ int_regs; struct pci_dev* pdev; } ;
struct pci_dev {int irq; } ;
struct msix_entry {int entry; int vector; } ;
struct TYPE_5__ {int hrrq_id; int vector; struct pmcraid_instance* drv_inst; } ;


 int DOORBELL_INTR_MODE_MSIX ;
 int IRQF_SHARED ;
 int PCI_CAP_ID_MSIX ;
 int PMCRAID_DRIVER_NAME ;
 int PMCRAID_NUM_MSIX_VECTORS ;
 int free_irq (int ,TYPE_2__*) ;
 int ioread32 (int ) ;
 int iowrite32 (int ,int ) ;
 int pci_disable_msix (struct pci_dev*) ;
 int pci_enable_msix (struct pci_dev*,struct msix_entry*,int) ;
 scalar_t__ pci_find_capability (struct pci_dev*,int ) ;
 scalar_t__ pmcraid_enable_msix ;
 int pmcraid_isr ;
 int pmcraid_isr_msix ;
 int request_irq (int ,int ,int ,int ,TYPE_2__*) ;

__attribute__((used)) static int
pmcraid_register_interrupt_handler(struct pmcraid_instance *pinstance)
{
 int rc;
 struct pci_dev *pdev = pinstance->pdev;

 if ((pmcraid_enable_msix) &&
  (pci_find_capability(pdev, PCI_CAP_ID_MSIX))) {
  int num_hrrq = PMCRAID_NUM_MSIX_VECTORS;
  struct msix_entry entries[PMCRAID_NUM_MSIX_VECTORS];
  int i;
  for (i = 0; i < PMCRAID_NUM_MSIX_VECTORS; i++)
   entries[i].entry = i;

  rc = pci_enable_msix(pdev, entries, num_hrrq);
  if (rc < 0)
   goto pmcraid_isr_legacy;




  if (rc > 0) {
   num_hrrq = rc;
   if (pci_enable_msix(pdev, entries, num_hrrq))
    goto pmcraid_isr_legacy;
  }

  for (i = 0; i < num_hrrq; i++) {
   pinstance->hrrq_vector[i].hrrq_id = i;
   pinstance->hrrq_vector[i].drv_inst = pinstance;
   pinstance->hrrq_vector[i].vector = entries[i].vector;
   rc = request_irq(pinstance->hrrq_vector[i].vector,
     pmcraid_isr_msix, 0,
     PMCRAID_DRIVER_NAME,
     &(pinstance->hrrq_vector[i]));

   if (rc) {
    int j;
    for (j = 0; j < i; j++)
     free_irq(entries[j].vector,
       &(pinstance->hrrq_vector[j]));
    pci_disable_msix(pdev);
    goto pmcraid_isr_legacy;
   }
  }

  pinstance->num_hrrq = num_hrrq;
  pinstance->interrupt_mode = 1;
  iowrite32(DOORBELL_INTR_MODE_MSIX,
     pinstance->int_regs.host_ioa_interrupt_reg);
  ioread32(pinstance->int_regs.host_ioa_interrupt_reg);
  goto pmcraid_isr_out;
 }

pmcraid_isr_legacy:



 pinstance->hrrq_vector[0].hrrq_id = 0;
 pinstance->hrrq_vector[0].drv_inst = pinstance;
 pinstance->hrrq_vector[0].vector = pdev->irq;
 pinstance->num_hrrq = 1;
 rc = 0;

 rc = request_irq(pdev->irq, pmcraid_isr, IRQF_SHARED,
    PMCRAID_DRIVER_NAME, &pinstance->hrrq_vector[0]);
pmcraid_isr_out:
 return rc;
}
