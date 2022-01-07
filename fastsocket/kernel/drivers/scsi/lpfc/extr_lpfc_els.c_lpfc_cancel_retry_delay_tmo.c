
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_work_evt {scalar_t__ evt_arg1; int evt_listp; } ;
struct lpfc_vport {scalar_t__ num_disc_nodes; scalar_t__ port_state; int fc_flag; } ;
struct lpfc_nodelist {int nlp_flag; struct lpfc_work_evt els_retry_evt; scalar_t__ nlp_last_elscmd; int nlp_delayfunc; } ;
struct Scsi_Host {int host_lock; } ;


 int FC_NDISC_ACTIVE ;
 scalar_t__ LPFC_VPORT_READY ;
 int NLP_DELAY_TMO ;
 int NLP_NPR_2B_DISC ;
 int del_timer_sync (int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int lpfc_can_disctmo (struct lpfc_vport*) ;
 int lpfc_end_rscn (struct lpfc_vport*) ;
 int lpfc_more_adisc (struct lpfc_vport*) ;
 int lpfc_more_plogi (struct lpfc_vport*) ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

void
lpfc_cancel_retry_delay_tmo(struct lpfc_vport *vport, struct lpfc_nodelist *nlp)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_work_evt *evtp;

 if (!(nlp->nlp_flag & NLP_DELAY_TMO))
  return;
 spin_lock_irq(shost->host_lock);
 nlp->nlp_flag &= ~NLP_DELAY_TMO;
 spin_unlock_irq(shost->host_lock);
 del_timer_sync(&nlp->nlp_delayfunc);
 nlp->nlp_last_elscmd = 0;
 if (!list_empty(&nlp->els_retry_evt.evt_listp)) {
  list_del_init(&nlp->els_retry_evt.evt_listp);

  evtp = &nlp->els_retry_evt;
  lpfc_nlp_put((struct lpfc_nodelist *)evtp->evt_arg1);
 }
 if (nlp->nlp_flag & NLP_NPR_2B_DISC) {
  spin_lock_irq(shost->host_lock);
  nlp->nlp_flag &= ~NLP_NPR_2B_DISC;
  spin_unlock_irq(shost->host_lock);
  if (vport->num_disc_nodes) {
   if (vport->port_state < LPFC_VPORT_READY) {

    lpfc_more_adisc(vport);
   } else {

    lpfc_more_plogi(vport);
    if (vport->num_disc_nodes == 0) {
     spin_lock_irq(shost->host_lock);
     vport->fc_flag &= ~FC_NDISC_ACTIVE;
     spin_unlock_irq(shost->host_lock);
     lpfc_can_disctmo(vport);
     lpfc_end_rscn(vport);
    }
   }
  }
 }
 return;
}
