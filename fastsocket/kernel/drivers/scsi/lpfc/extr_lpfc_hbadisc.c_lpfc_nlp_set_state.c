
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int fc_nodes; } ;
struct lpfc_nodelist {int nlp_state; int nlp_listp; int nlp_type; int nlp_flag; int nlp_DID; } ;
struct Scsi_Host {int host_lock; } ;
typedef int name2 ;
typedef int name1 ;


 int KERN_INFO ;
 int LOG_NODE ;
 int LPFC_DISC_TRC_NODE ;
 int NLP_FC_NODE ;
 int NLP_STE_NPR_NODE ;
 int NLP_STE_UNMAPPED_NODE ;
 int NLP_TGT_NO_SCSIID ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int lpfc_cancel_retry_delay_tmo (struct lpfc_vport*,struct lpfc_nodelist*) ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int ,int,int) ;
 int lpfc_nlp_counters (struct lpfc_vport*,int,int) ;
 int lpfc_nlp_state_cleanup (struct lpfc_vport*,struct lpfc_nodelist*,int,int) ;
 int lpfc_nlp_state_name (char*,int,int) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int ,int ,int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

void
lpfc_nlp_set_state(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
     int state)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 int old_state = ndlp->nlp_state;
 char name1[16], name2[16];

 lpfc_printf_vlog(vport, KERN_INFO, LOG_NODE,
    "0904 NPort state transition x%06x, %s -> %s\n",
    ndlp->nlp_DID,
    lpfc_nlp_state_name(name1, sizeof(name1), old_state),
    lpfc_nlp_state_name(name2, sizeof(name2), state));

 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_NODE,
  "node statechg    did:x%x old:%d ste:%d",
  ndlp->nlp_DID, old_state, state);

 if (old_state == NLP_STE_NPR_NODE &&
     state != NLP_STE_NPR_NODE)
  lpfc_cancel_retry_delay_tmo(vport, ndlp);
 if (old_state == NLP_STE_UNMAPPED_NODE) {
  ndlp->nlp_flag &= ~NLP_TGT_NO_SCSIID;
  ndlp->nlp_type &= ~NLP_FC_NODE;
 }

 if (list_empty(&ndlp->nlp_listp)) {
  spin_lock_irq(shost->host_lock);
  list_add_tail(&ndlp->nlp_listp, &vport->fc_nodes);
  spin_unlock_irq(shost->host_lock);
 } else if (old_state)
  lpfc_nlp_counters(vport, old_state, -1);

 ndlp->nlp_state = state;
 lpfc_nlp_counters(vport, state, 1);
 lpfc_nlp_state_cleanup(vport, ndlp, old_state, state);
}
