
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int ulp_fw_name; int fw_name; } ;
struct TYPE_9__ {TYPE_2__ read_rev; } ;
struct lpfc_mqe {TYPE_3__ un; } ;
struct lpfc_hba {int dummy; } ;
struct TYPE_10__ {int mbxCommand; } ;
struct TYPE_7__ {struct lpfc_mqe mqe; TYPE_4__ mb; } ;
struct TYPE_11__ {TYPE_1__ u; } ;
typedef TYPE_4__ MAILBOX_t ;
typedef TYPE_5__ LPFC_MBOXQ_t ;



 int lpfc_sli_pcimem_bcopy (int ,int ,int) ;

void
lpfc_sli4_swap_str(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
 MAILBOX_t *mb = &pmb->u.mb;
 struct lpfc_mqe *mqe;

 switch (mb->mbxCommand) {
 case 128:
   mqe = &pmb->u.mqe;
  lpfc_sli_pcimem_bcopy(mqe->un.read_rev.fw_name,
     mqe->un.read_rev.fw_name, 16);
  lpfc_sli_pcimem_bcopy(mqe->un.read_rev.ulp_fw_name,
     mqe->un.read_rev.ulp_fw_name, 16);
  break;
 default:
  break;
 }
 return;
}
