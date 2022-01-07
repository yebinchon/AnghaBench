
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_hbq_init {int mask_count; int profile; TYPE_5__* hbqMasks; int logEntry; int headerLen; int ring_mask; int rn; int entry_count; } ;
struct lpfc_hbq_entry {int dummy; } ;
struct TYPE_12__ {int phys; } ;
struct lpfc_hba {TYPE_3__ hbqslimp; } ;
struct config_hbq_var {int hbqId; int numMask; int profile; TYPE_4__* hbqMasks; int hbqaddrHigh; scalar_t__ hbqaddrLow; int logEntry; int headerLen; int ringMask; int recvNotify; int entry_count; } ;
struct TYPE_11__ {struct config_hbq_var varCfgHbq; } ;
struct TYPE_15__ {int mbxOwner; int mbxCommand; TYPE_2__ un; } ;
struct TYPE_10__ {TYPE_6__ mb; } ;
struct TYPE_16__ {TYPE_1__ u; } ;
struct TYPE_14__ {int rctlmask; int rctlmatch; int tmask; int tmatch; } ;
struct TYPE_13__ {int rctlmask; int rctlmatch; int tmask; int tmatch; } ;
typedef TYPE_6__ MAILBOX_t ;
typedef TYPE_7__ LPFC_MBOXQ_t ;


 int MBX_CONFIG_HBQ ;
 int OWN_HOST ;
 int lpfc_build_hbq_profile2 (struct config_hbq_var*,struct lpfc_hbq_init*) ;
 int lpfc_build_hbq_profile3 (struct config_hbq_var*,struct lpfc_hbq_init*) ;
 int lpfc_build_hbq_profile5 (struct config_hbq_var*,struct lpfc_hbq_init*) ;
 int memset (TYPE_7__*,int ,int) ;
 int putPaddrHigh (int ) ;
 scalar_t__ putPaddrLow (int ) ;

void
lpfc_config_hbq(struct lpfc_hba *phba, uint32_t id,
   struct lpfc_hbq_init *hbq_desc,
  uint32_t hbq_entry_index, LPFC_MBOXQ_t *pmb)
{
 int i;
 MAILBOX_t *mb = &pmb->u.mb;
 struct config_hbq_var *hbqmb = &mb->un.varCfgHbq;

 memset(pmb, 0, sizeof (LPFC_MBOXQ_t));
 hbqmb->hbqId = id;
 hbqmb->entry_count = hbq_desc->entry_count;
 hbqmb->recvNotify = hbq_desc->rn;

 hbqmb->numMask = hbq_desc->mask_count;

 hbqmb->profile = hbq_desc->profile;


 hbqmb->ringMask = hbq_desc->ring_mask;


 hbqmb->headerLen = hbq_desc->headerLen;

 hbqmb->logEntry = hbq_desc->logEntry;



 hbqmb->hbqaddrLow = putPaddrLow(phba->hbqslimp.phys) +
  hbq_entry_index * sizeof(struct lpfc_hbq_entry);
 hbqmb->hbqaddrHigh = putPaddrHigh(phba->hbqslimp.phys);

 mb->mbxCommand = MBX_CONFIG_HBQ;
 mb->mbxOwner = OWN_HOST;




 if (hbq_desc->profile == 2)
  lpfc_build_hbq_profile2(hbqmb, hbq_desc);
 else if (hbq_desc->profile == 3)
  lpfc_build_hbq_profile3(hbqmb, hbq_desc);
 else if (hbq_desc->profile == 5)
  lpfc_build_hbq_profile5(hbqmb, hbq_desc);


 if (!hbq_desc->mask_count)
  return;


 for (i = 0; i < hbq_desc->mask_count; i++) {
  hbqmb->hbqMasks[i].tmatch = hbq_desc->hbqMasks[i].tmatch;
  hbqmb->hbqMasks[i].tmask = hbq_desc->hbqMasks[i].tmask;
  hbqmb->hbqMasks[i].rctlmatch = hbq_desc->hbqMasks[i].rctlmatch;
  hbqmb->hbqMasks[i].rctlmask = hbq_desc->hbqMasks[i].rctlmask;
 }

 return;
}
