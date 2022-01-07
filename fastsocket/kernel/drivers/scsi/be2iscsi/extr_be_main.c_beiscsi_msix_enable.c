
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct beiscsi_hba {int num_cpus; int msix_enabled; TYPE_1__* msix_entries; int pcidev; } ;
struct TYPE_2__ {int entry; } ;


 int pci_enable_msix (int ,TYPE_1__*,int) ;

__attribute__((used)) static void beiscsi_msix_enable(struct beiscsi_hba *phba)
{
 int i, status;

 for (i = 0; i <= phba->num_cpus; i++)
  phba->msix_entries[i].entry = i;

 status = pci_enable_msix(phba->pcidev, phba->msix_entries,
     (phba->num_cpus + 1));
 if (!status)
  phba->msix_enabled = 1;

 return;
}
