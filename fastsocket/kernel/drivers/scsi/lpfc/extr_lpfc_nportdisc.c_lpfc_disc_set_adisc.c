
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_vport {int fc_flag; scalar_t__ cfg_use_adisc; } ;
struct lpfc_nodelist {int nlp_flag; int nlp_fcp_info; int nlp_type; } ;
struct Scsi_Host {int host_lock; } ;


 int FC_PT2PT ;
 int FC_RSCN_MODE ;
 int NLP_FCP_2_DEVICE ;
 int NLP_FCP_TARGET ;
 int NLP_NPR_ADISC ;
 int NLP_RPI_REGISTERED ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_unreg_rpi (struct lpfc_vport*,struct lpfc_nodelist*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static uint32_t
lpfc_disc_set_adisc(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);

 if (!(ndlp->nlp_flag & NLP_RPI_REGISTERED)) {
  ndlp->nlp_flag &= ~NLP_NPR_ADISC;
  return 0;
 }

 if (!(vport->fc_flag & FC_PT2PT)) {

  if ((vport->cfg_use_adisc && (vport->fc_flag & FC_RSCN_MODE)) ||
      ((ndlp->nlp_fcp_info & NLP_FCP_2_DEVICE) &&
       (ndlp->nlp_type & NLP_FCP_TARGET))) {
   spin_lock_irq(shost->host_lock);
   ndlp->nlp_flag |= NLP_NPR_ADISC;
   spin_unlock_irq(shost->host_lock);
   return 1;
  }
 }
 ndlp->nlp_flag &= ~NLP_NPR_ADISC;
 lpfc_unreg_rpi(vport, ndlp);
 return 0;
}
