
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct lpfc_vport {int vpi; } ;
struct lpfc_hba {int mbox_mem_pool; } ;
struct TYPE_5__ {int mbox_cmpl; } ;
typedef TYPE_1__ LPFC_MBOXQ_t ;


 int GFP_KERNEL ;
 int KERN_ERR ;
 int LOG_MBOX ;
 int MBX_NOT_FINISHED ;
 int MBX_NOWAIT ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*) ;
 int lpfc_sli_def_mbox_cmpl ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_1__*,int ) ;
 int lpfc_unreg_login (struct lpfc_hba*,int ,int ,TYPE_1__*) ;
 scalar_t__ mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_1__*,int ) ;

void
lpfc_release_rpi(struct lpfc_hba *phba,
  struct lpfc_vport *vport,
  uint16_t rpi)
{
 LPFC_MBOXQ_t *pmb;
 int rc;

 pmb = (LPFC_MBOXQ_t *) mempool_alloc(phba->mbox_mem_pool,
   GFP_KERNEL);
 if (!pmb)
  lpfc_printf_vlog(vport, KERN_ERR, LOG_MBOX,
   "2796 mailbox memory allocation failed \n");
 else {
  lpfc_unreg_login(phba, vport->vpi, rpi, pmb);
  pmb->mbox_cmpl = lpfc_sli_def_mbox_cmpl;
  rc = lpfc_sli_issue_mbox(phba, pmb, MBX_NOWAIT);
  if (rc == MBX_NOT_FINISHED)
   mempool_free(pmb, phba->mbox_mem_pool);
 }
}
