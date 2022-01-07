
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct lpfc_hba {scalar_t__ sli_rev; int mbox_mem_pool; TYPE_1__* pport; } ;
struct lpfc_dmabuf {int phys; int virt; } ;
struct TYPE_11__ {int * varWords; } ;
struct TYPE_12__ {TYPE_2__ un; scalar_t__ mbxStatus; } ;
struct TYPE_13__ {TYPE_3__ mb; } ;
struct TYPE_14__ {TYPE_4__ u; int * context2; int * context1; } ;
struct TYPE_10__ {int fc_sparam; int fc_myDID; int vpi; } ;
typedef TYPE_5__ LPFC_MBOXQ_t ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int LPFC_MBOX_TMO ;
 scalar_t__ LPFC_SLI_REV4 ;
 int MBX_SUCCESS ;
 int MBX_TIMEOUT ;
 int kfree (struct lpfc_dmabuf*) ;
 int lpfc_mbuf_free (struct lpfc_hba*,int ,int ) ;
 int lpfc_reg_rpi (struct lpfc_hba*,int ,int ,int *,TYPE_5__*,int ) ;
 int lpfc_sli4_alloc_rpi (struct lpfc_hba*) ;
 int lpfc_sli4_free_rpi (struct lpfc_hba*,int ) ;
 int lpfc_sli_issue_mbox_wait (struct lpfc_hba*,TYPE_5__*,int ) ;
 TYPE_5__* mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_5__*,int ) ;

__attribute__((used)) static int lpfcdiag_loop_self_reg(struct lpfc_hba *phba, uint16_t *rpi)
{
 LPFC_MBOXQ_t *mbox;
 struct lpfc_dmabuf *dmabuff;
 int status;

 mbox = mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL);
 if (!mbox)
  return -ENOMEM;

 if (phba->sli_rev < LPFC_SLI_REV4)
  status = lpfc_reg_rpi(phba, 0, phba->pport->fc_myDID,
    (uint8_t *)&phba->pport->fc_sparam,
    mbox, *rpi);
 else {
  *rpi = lpfc_sli4_alloc_rpi(phba);
  status = lpfc_reg_rpi(phba, phba->pport->vpi,
    phba->pport->fc_myDID,
    (uint8_t *)&phba->pport->fc_sparam,
    mbox, *rpi);
 }

 if (status) {
  mempool_free(mbox, phba->mbox_mem_pool);
  if (phba->sli_rev == LPFC_SLI_REV4)
   lpfc_sli4_free_rpi(phba, *rpi);
  return -ENOMEM;
 }

 dmabuff = (struct lpfc_dmabuf *) mbox->context1;
 mbox->context1 = ((void*)0);
 mbox->context2 = ((void*)0);
 status = lpfc_sli_issue_mbox_wait(phba, mbox, LPFC_MBOX_TMO);

 if ((status != MBX_SUCCESS) || (mbox->u.mb.mbxStatus)) {
  lpfc_mbuf_free(phba, dmabuff->virt, dmabuff->phys);
  kfree(dmabuff);
  if (status != MBX_TIMEOUT)
   mempool_free(mbox, phba->mbox_mem_pool);
  if (phba->sli_rev == LPFC_SLI_REV4)
   lpfc_sli4_free_rpi(phba, *rpi);
  return -ENODEV;
 }

 if (phba->sli_rev < LPFC_SLI_REV4)
  *rpi = mbox->u.mb.un.varWords[0];

 lpfc_mbuf_free(phba, dmabuff->virt, dmabuff->phys);
 kfree(dmabuff);
 mempool_free(mbox, phba->mbox_mem_pool);
 return 0;
}
