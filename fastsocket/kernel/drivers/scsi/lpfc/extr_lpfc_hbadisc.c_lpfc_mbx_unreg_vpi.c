
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct lpfc_vport {int unreg_vpi_cmpl; int vpi; struct lpfc_hba* phba; } ;
struct lpfc_hba {int mbox_mem_pool; } ;
struct TYPE_6__ {int mbox_cmpl; struct lpfc_vport* vport; } ;
typedef TYPE_1__ LPFC_MBOXQ_t ;


 int GFP_KERNEL ;
 int KERN_ERR ;
 int LOG_MBOX ;
 int LOG_VPORT ;
 int MBX_NOT_FINISHED ;
 int MBX_NOWAIT ;
 int VPORT_ERROR ;
 int lpfc_mbx_cmpl_unreg_vpi ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int,char*) ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_1__*,int ) ;
 int lpfc_unreg_vpi (struct lpfc_hba*,int ,TYPE_1__*) ;
 TYPE_1__* mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_1__*,int ) ;

int
lpfc_mbx_unreg_vpi(struct lpfc_vport *vport)
{
 struct lpfc_hba *phba = vport->phba;
 LPFC_MBOXQ_t *mbox;
 int rc;

 mbox = mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL);
 if (!mbox)
  return 1;

 lpfc_unreg_vpi(phba, vport->vpi, mbox);
 mbox->vport = vport;
 mbox->mbox_cmpl = lpfc_mbx_cmpl_unreg_vpi;
 rc = lpfc_sli_issue_mbox(phba, mbox, MBX_NOWAIT);
 if (rc == MBX_NOT_FINISHED) {
  lpfc_printf_vlog(vport, KERN_ERR, LOG_MBOX | LOG_VPORT,
     "1800 Could not issue unreg_vpi\n");
  mempool_free(mbox, phba->mbox_mem_pool);
  vport->unreg_vpi_cmpl = VPORT_ERROR;
  return rc;
 }
 return 0;
}
