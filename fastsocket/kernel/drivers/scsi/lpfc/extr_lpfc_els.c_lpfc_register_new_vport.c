
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct lpfc_vport {int fc_flag; } ;
struct lpfc_nodelist {int dummy; } ;
struct lpfc_hba {int mbox_mem_pool; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_6__ {int mbox_cmpl; int context2; struct lpfc_vport* vport; } ;
typedef TYPE_1__ LPFC_MBOXQ_t ;


 int FC_VPORT_FAILED ;
 int FC_VPORT_NEEDS_REG_VPI ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int LOG_MBOX ;
 scalar_t__ MBX_NOT_FINISHED ;
 int MBX_NOWAIT ;
 int lpfc_cmpl_reg_new_vport ;
 int lpfc_nlp_get (struct lpfc_nodelist*) ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*) ;
 int lpfc_reg_vpi (struct lpfc_vport*,TYPE_1__*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 scalar_t__ lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_1__*,int ) ;
 int lpfc_vport_set_state (struct lpfc_vport*,int ) ;
 TYPE_1__* mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_1__*,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

void
lpfc_register_new_vport(struct lpfc_hba *phba, struct lpfc_vport *vport,
   struct lpfc_nodelist *ndlp)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 LPFC_MBOXQ_t *mbox;

 mbox = mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL);
 if (mbox) {
  lpfc_reg_vpi(vport, mbox);
  mbox->vport = vport;
  mbox->context2 = lpfc_nlp_get(ndlp);
  mbox->mbox_cmpl = lpfc_cmpl_reg_new_vport;
  if (lpfc_sli_issue_mbox(phba, mbox, MBX_NOWAIT)
      == MBX_NOT_FINISHED) {



   lpfc_nlp_put(ndlp);
   mempool_free(mbox, phba->mbox_mem_pool);

   lpfc_printf_vlog(vport, KERN_ERR, LOG_MBOX,
    "0253 Register VPI: Can't send mbox\n");
   goto mbox_err_exit;
  }
 } else {
  lpfc_printf_vlog(vport, KERN_ERR, LOG_MBOX,
     "0254 Register VPI: no memory\n");
  goto mbox_err_exit;
 }
 return;

mbox_err_exit:
 lpfc_vport_set_state(vport, FC_VPORT_FAILED);
 spin_lock_irq(shost->host_lock);
 vport->fc_flag &= ~FC_VPORT_NEEDS_REG_VPI;
 spin_unlock_irq(shost->host_lock);
 return;
}
