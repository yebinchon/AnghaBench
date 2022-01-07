
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_hba {int pcidev; TYPE_1__* msix_entries; } ;
struct TYPE_2__ {int vector; } ;


 int LPFC_MSIX_VECTORS ;
 int free_irq (int ,struct lpfc_hba*) ;
 int pci_disable_msix (int ) ;

__attribute__((used)) static void
lpfc_sli_disable_msix(struct lpfc_hba *phba)
{
 int i;


 for (i = 0; i < LPFC_MSIX_VECTORS; i++)
  free_irq(phba->msix_entries[i].vector, phba);

 pci_disable_msix(phba->pcidev);

 return;
}
