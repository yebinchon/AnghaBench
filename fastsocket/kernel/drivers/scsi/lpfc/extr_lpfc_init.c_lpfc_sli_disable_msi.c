
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_hba {TYPE_1__* pcidev; } ;
struct TYPE_2__ {int irq; } ;


 int free_irq (int ,struct lpfc_hba*) ;
 int pci_disable_msi (TYPE_1__*) ;

__attribute__((used)) static void
lpfc_sli_disable_msi(struct lpfc_hba *phba)
{
 free_irq(phba->pcidev->irq, phba);
 pci_disable_msi(phba->pcidev);
 return;
}
