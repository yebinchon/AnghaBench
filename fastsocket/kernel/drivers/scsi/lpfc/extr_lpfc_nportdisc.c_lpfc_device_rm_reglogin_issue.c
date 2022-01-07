
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int nlp_flag; int nlp_state; } ;
struct Scsi_Host {int host_lock; } ;


 int NLP_NODEV_REMOVE ;
 int NLP_NPR_2B_DISC ;
 int NLP_STE_FREED_NODE ;
 int lpfc_drop_node (struct lpfc_vport*,struct lpfc_nodelist*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static uint32_t
lpfc_device_rm_reglogin_issue(struct lpfc_vport *vport,
         struct lpfc_nodelist *ndlp,
         void *arg,
         uint32_t evt)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);

 if (ndlp->nlp_flag & NLP_NPR_2B_DISC) {
  spin_lock_irq(shost->host_lock);
  ndlp->nlp_flag |= NLP_NODEV_REMOVE;
  spin_unlock_irq(shost->host_lock);
  return ndlp->nlp_state;
 } else {
  lpfc_drop_node(vport, ndlp);
  return NLP_STE_FREED_NODE;
 }
}
