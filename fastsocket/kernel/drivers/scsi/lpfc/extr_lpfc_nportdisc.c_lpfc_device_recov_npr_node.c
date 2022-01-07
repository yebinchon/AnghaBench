
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_vport {int fc_flag; } ;
struct lpfc_nodelist {int nlp_flag; int nlp_state; } ;
struct Scsi_Host {int host_lock; } ;


 int FC_RSCN_DEFERRED ;
 int NLP_NODEV_REMOVE ;
 int NLP_NPR_2B_DISC ;
 int lpfc_cancel_retry_delay_tmo (struct lpfc_vport*,struct lpfc_nodelist*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static uint32_t
lpfc_device_recov_npr_node(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
      void *arg, uint32_t evt)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);




 if (vport->fc_flag & FC_RSCN_DEFERRED)
  return ndlp->nlp_state;

 lpfc_cancel_retry_delay_tmo(vport, ndlp);
 spin_lock_irq(shost->host_lock);
 ndlp->nlp_flag &= ~(NLP_NODEV_REMOVE | NLP_NPR_2B_DISC);
 spin_unlock_irq(shost->host_lock);
 return ndlp->nlp_state;
}
