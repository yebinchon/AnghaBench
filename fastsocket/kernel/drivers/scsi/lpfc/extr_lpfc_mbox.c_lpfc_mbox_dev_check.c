
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {scalar_t__ link_state; int pcidev; } ;


 int ENODEV ;
 scalar_t__ LPFC_HBA_ERROR ;
 int pci_channel_offline (int ) ;
 scalar_t__ unlikely (int ) ;

int
lpfc_mbox_dev_check(struct lpfc_hba *phba)
{

 if (unlikely(pci_channel_offline(phba->pcidev)))
  return -ENODEV;


 if (phba->link_state == LPFC_HBA_ERROR)
  return -ENODEV;

 return 0;
}
