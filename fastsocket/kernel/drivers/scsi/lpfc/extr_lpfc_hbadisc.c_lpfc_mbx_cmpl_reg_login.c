
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int nlp_flag; scalar_t__ nlp_state; } ;
struct lpfc_hba {int mbox_mem_pool; } ;
struct lpfc_dmabuf {int phys; int virt; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_5__ {int * context2; int * context1; struct lpfc_vport* vport; } ;
typedef TYPE_1__ LPFC_MBOXQ_t ;


 int NLP_EVT_CMPL_REG_LOGIN ;
 int NLP_IGNR_REG_CMPL ;
 int NLP_REG_LOGIN_SEND ;
 scalar_t__ NLP_STE_REG_LOGIN_ISSUE ;
 int kfree (struct lpfc_dmabuf*) ;
 int lpfc_disc_state_machine (struct lpfc_vport*,struct lpfc_nodelist*,TYPE_1__*,int ) ;
 int lpfc_mbuf_free (struct lpfc_hba*,int ,int ) ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int mempool_free (TYPE_1__*,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

void
lpfc_mbx_cmpl_reg_login(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
 struct lpfc_vport *vport = pmb->vport;
 struct lpfc_dmabuf *mp = (struct lpfc_dmabuf *) (pmb->context1);
 struct lpfc_nodelist *ndlp = (struct lpfc_nodelist *) pmb->context2;
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);

 pmb->context1 = ((void*)0);
 pmb->context2 = ((void*)0);

 if (ndlp->nlp_flag & NLP_REG_LOGIN_SEND)
  ndlp->nlp_flag &= ~NLP_REG_LOGIN_SEND;

 if (ndlp->nlp_flag & NLP_IGNR_REG_CMPL ||
     ndlp->nlp_state != NLP_STE_REG_LOGIN_ISSUE) {
  spin_lock_irq(shost->host_lock);
  ndlp->nlp_flag &= ~NLP_IGNR_REG_CMPL;
  spin_unlock_irq(shost->host_lock);
 } else

  lpfc_disc_state_machine(vport, ndlp, pmb,
    NLP_EVT_CMPL_REG_LOGIN);

 lpfc_mbuf_free(phba, mp->virt, mp->phys);
 kfree(mp);
 mempool_free(pmb, phba->mbox_mem_pool);



 lpfc_nlp_put(ndlp);

 return;
}
