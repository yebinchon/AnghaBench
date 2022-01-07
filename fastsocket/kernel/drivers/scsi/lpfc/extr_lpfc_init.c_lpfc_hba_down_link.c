
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct lpfc_hba {int mbox_mem_pool; int link_state; } ;
struct TYPE_6__ {int mbox_cmpl; } ;
typedef TYPE_1__ LPFC_MBOXQ_t ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int LOG_INIT ;
 int LPFC_HBA_ERROR ;
 int MBX_BUSY ;
 int MBX_NOWAIT ;
 int MBX_SUCCESS ;
 int lpfc_down_link (struct lpfc_hba*,TYPE_1__*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,...) ;
 int lpfc_sli_def_mbox_cmpl ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_1__*,int ) ;
 TYPE_1__* mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_1__*,int ) ;

int
lpfc_hba_down_link(struct lpfc_hba *phba)
{
 LPFC_MBOXQ_t *pmb;
 int rc;

 pmb = mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL);
 if (!pmb) {
  phba->link_state = LPFC_HBA_ERROR;
  return -ENOMEM;
 }

 lpfc_printf_log(phba,
  KERN_ERR, LOG_INIT,
  "0491 Adapter Link is disabled.\n");
 lpfc_down_link(phba, pmb);
 pmb->mbox_cmpl = lpfc_sli_def_mbox_cmpl;
 rc = lpfc_sli_issue_mbox(phba, pmb, MBX_NOWAIT);
 if ((rc != MBX_SUCCESS) && (rc != MBX_BUSY)) {
  lpfc_printf_log(phba,
  KERN_ERR, LOG_INIT,
  "2522 Adapter failed to issue DOWN_LINK"
  " mbox command rc 0x%x\n", rc);

  mempool_free(pmb, phba->mbox_mem_pool);
  return -EIO;
 }
 return 0;
}
