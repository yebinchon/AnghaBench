
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_vport {int fc_flag; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int nlp_flag; int nlp_state; int nlp_prev_state; } ;
struct lpfc_hba {int dummy; } ;
struct Scsi_Host {int host_lock; } ;


 int FC_RSCN_DEFERRED ;
 int NLP_NODEV_REMOVE ;
 int NLP_NPR_2B_DISC ;
 int NLP_STE_NPR_NODE ;
 int NLP_STE_PRLI_ISSUE ;
 int lpfc_disc_set_adisc (struct lpfc_vport*,struct lpfc_nodelist*) ;
 int lpfc_els_abort (struct lpfc_hba*,struct lpfc_nodelist*) ;
 int lpfc_nlp_set_state (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static uint32_t
lpfc_device_recov_prli_issue(struct lpfc_vport *vport,
        struct lpfc_nodelist *ndlp,
        void *arg,
        uint32_t evt)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_hba *phba = vport->phba;




 if (vport->fc_flag & FC_RSCN_DEFERRED)
  return ndlp->nlp_state;


 lpfc_els_abort(phba, ndlp);

 ndlp->nlp_prev_state = NLP_STE_PRLI_ISSUE;
 lpfc_nlp_set_state(vport, ndlp, NLP_STE_NPR_NODE);
 spin_lock_irq(shost->host_lock);
 ndlp->nlp_flag &= ~(NLP_NODEV_REMOVE | NLP_NPR_2B_DISC);
 spin_unlock_irq(shost->host_lock);
 lpfc_disc_set_adisc(vport, ndlp);
 return ndlp->nlp_state;
}
