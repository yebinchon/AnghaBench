
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * fcp_eq_hdl; TYPE_1__* msix_entries; } ;
struct lpfc_hba {int cfg_fcp_io_channel; int pcidev; TYPE_2__ sli4_hba; } ;
struct TYPE_3__ {int vector; } ;


 int free_irq (int ,int *) ;
 int pci_disable_msix (int ) ;

__attribute__((used)) static void
lpfc_sli4_disable_msix(struct lpfc_hba *phba)
{
 int index;


 for (index = 0; index < phba->cfg_fcp_io_channel; index++)
  free_irq(phba->sli4_hba.msix_entries[index].vector,
    &phba->sli4_hba.fcp_eq_hdl[index]);


 pci_disable_msix(phba->pcidev);

 return;
}
