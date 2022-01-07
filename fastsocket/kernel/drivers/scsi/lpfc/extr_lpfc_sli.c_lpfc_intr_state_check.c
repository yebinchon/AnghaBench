
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sli_intr; } ;
struct TYPE_4__ {TYPE_1__ slistat; } ;
struct lpfc_hba {scalar_t__ link_state; TYPE_2__ sli; int pcidev; } ;


 int EIO ;
 scalar_t__ LPFC_LINK_DOWN ;
 int pci_channel_offline (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int
lpfc_intr_state_check(struct lpfc_hba *phba)
{

 if (unlikely(pci_channel_offline(phba->pcidev)))
  return -EIO;


 phba->sli.slistat.sli_intr++;


 if (unlikely(phba->link_state < LPFC_LINK_DOWN))
  return -EIO;

 return 0;
}
