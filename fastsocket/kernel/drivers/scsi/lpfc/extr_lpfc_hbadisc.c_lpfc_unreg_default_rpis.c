
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct lpfc_vport {int vpi; struct lpfc_hba* phba; } ;
struct lpfc_hba {int mbox_mem_pool; } ;
struct TYPE_6__ {int * context1; int mbox_cmpl; struct lpfc_vport* vport; } ;
typedef TYPE_1__ LPFC_MBOXQ_t ;


 int GFP_KERNEL ;
 int KERN_ERR ;
 int LOG_MBOX ;
 int LOG_VPORT ;
 int LPFC_MBOX_TMO ;
 int LPFC_UNREG_ALL_DFLT_RPIS ;
 int MBX_NOT_FINISHED ;
 int MBX_TIMEOUT ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int,char*,int) ;
 int lpfc_sli_def_mbox_cmpl ;
 int lpfc_sli_issue_mbox_wait (struct lpfc_hba*,TYPE_1__*,int ) ;
 int lpfc_unreg_did (struct lpfc_hba*,int ,int ,TYPE_1__*) ;
 TYPE_1__* mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_1__*,int ) ;

void
lpfc_unreg_default_rpis(struct lpfc_vport *vport)
{
 struct lpfc_hba *phba = vport->phba;
 LPFC_MBOXQ_t *mbox;
 int rc;

 mbox = mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL);
 if (mbox) {
  lpfc_unreg_did(phba, vport->vpi, LPFC_UNREG_ALL_DFLT_RPIS,
          mbox);
  mbox->vport = vport;
  mbox->mbox_cmpl = lpfc_sli_def_mbox_cmpl;
  mbox->context1 = ((void*)0);
  rc = lpfc_sli_issue_mbox_wait(phba, mbox, LPFC_MBOX_TMO);
  if (rc != MBX_TIMEOUT)
   mempool_free(mbox, phba->mbox_mem_pool);

  if ((rc == MBX_TIMEOUT) || (rc == MBX_NOT_FINISHED))
   lpfc_printf_vlog(vport, KERN_ERR, LOG_MBOX | LOG_VPORT,
      "1815 Could not issue "
      "unreg_did (default rpis) status %d\n",
      rc);
 }
}
