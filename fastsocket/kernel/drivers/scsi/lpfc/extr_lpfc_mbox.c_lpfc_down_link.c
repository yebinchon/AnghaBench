
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct lpfc_hba {int dummy; } ;
struct TYPE_7__ {int mbxOwner; int mbxCommand; } ;
struct TYPE_6__ {TYPE_2__ mb; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
typedef TYPE_2__ MAILBOX_t ;
typedef TYPE_3__ LPFC_MBOXQ_t ;


 int MBX_DOWN_LINK ;
 int OWN_HOST ;
 int memset (TYPE_3__*,int ,int) ;

void
lpfc_down_link(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
 MAILBOX_t *mb;
 memset(pmb, 0, sizeof(LPFC_MBOXQ_t));
 mb = &pmb->u.mb;
 mb->mbxCommand = MBX_DOWN_LINK;
 mb->mbxOwner = OWN_HOST;
}
