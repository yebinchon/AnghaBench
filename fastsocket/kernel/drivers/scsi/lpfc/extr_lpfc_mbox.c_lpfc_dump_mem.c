
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef void* uint16_t ;
struct lpfc_hba {int dummy; } ;
struct TYPE_9__ {int cv; int word_cnt; scalar_t__ resp_offset; scalar_t__ co; void* region_id; void* entry_index; int type; } ;
struct TYPE_10__ {TYPE_2__ varDmp; } ;
struct TYPE_11__ {int mbxOwner; TYPE_3__ un; int mbxCommand; } ;
struct TYPE_8__ {TYPE_4__ mb; } ;
struct TYPE_12__ {void* context2; TYPE_1__ u; } ;
typedef TYPE_4__ MAILBOX_t ;
typedef TYPE_5__ LPFC_MBOXQ_t ;


 int DMP_NV_PARAMS ;
 int DMP_RSP_SIZE ;
 int MBX_DUMP_MEMORY ;
 int OWN_HOST ;
 int memset (TYPE_5__*,int ,int) ;

void
lpfc_dump_mem(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb, uint16_t offset,
  uint16_t region_id)
{
 MAILBOX_t *mb;
 void *ctx;

 mb = &pmb->u.mb;
 ctx = pmb->context2;


 memset(pmb, 0, sizeof (LPFC_MBOXQ_t));
 mb->mbxCommand = MBX_DUMP_MEMORY;
 mb->un.varDmp.cv = 1;
 mb->un.varDmp.type = DMP_NV_PARAMS;
 mb->un.varDmp.entry_index = offset;
 mb->un.varDmp.region_id = region_id;
 mb->un.varDmp.word_cnt = (DMP_RSP_SIZE / sizeof (uint32_t));
 mb->un.varDmp.co = 0;
 mb->un.varDmp.resp_offset = 0;
 pmb->context2 = ctx;
 mb->mbxOwner = OWN_HOST;
 return;
}
