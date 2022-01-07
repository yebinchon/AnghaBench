
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int mbox_mem_pool; } ;
struct TYPE_6__ {int mbox_cmpl; } ;
typedef TYPE_1__ LPFC_MBOXQ_t ;


 int GFP_KERNEL ;
 int KERN_ERR ;
 int LOG_MBOX ;
 int MBX_NOT_FINISHED ;
 int MBX_NOWAIT ;
 int lpfc_init_vfi (TYPE_1__*,struct lpfc_vport*) ;
 int lpfc_init_vfi_cmpl ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*) ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_1__*,int ) ;
 TYPE_1__* mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_1__*,int ) ;

void
lpfc_issue_init_vfi(struct lpfc_vport *vport)
{
 LPFC_MBOXQ_t *mboxq;
 int rc;
 struct lpfc_hba *phba = vport->phba;

 mboxq = mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL);
 if (!mboxq) {
  lpfc_printf_vlog(vport, KERN_ERR,
   LOG_MBOX, "2892 Failed to allocate "
   "init_vfi mailbox\n");
  return;
 }
 lpfc_init_vfi(mboxq, vport);
 mboxq->mbox_cmpl = lpfc_init_vfi_cmpl;
 rc = lpfc_sli_issue_mbox(phba, mboxq, MBX_NOWAIT);
 if (rc == MBX_NOT_FINISHED) {
  lpfc_printf_vlog(vport, KERN_ERR,
   LOG_MBOX, "2893 Failed to issue init_vfi mailbox\n");
  mempool_free(mboxq, vport->phba->mbox_mem_pool);
 }
}
