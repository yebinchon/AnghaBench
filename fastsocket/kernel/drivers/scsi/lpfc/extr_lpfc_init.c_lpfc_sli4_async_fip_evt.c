
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct lpfc_vport {int fc_flag; int port_state; } ;
struct lpfc_nodelist {int nlp_last_elscmd; int nlp_flag; int nlp_delayfunc; } ;
struct TYPE_3__ {int fcf_indx; } ;
struct TYPE_4__ {int fcf_flag; TYPE_1__ current_rec; } ;
struct lpfc_hba {int fc_eventTag; int fcoe_eventtag; int hba_flag; int fcoe_cvl_eventtag; int max_vports; int hbalock; TYPE_2__ fcf; } ;
struct lpfc_acqe_fip {int event_tag; int index; } ;
struct Scsi_Host {int * host_lock; } ;


 int ELS_CMD_FDISC ;
 int FCF_ACVL_DISC ;
 int FCF_DEAD_DISC ;
 int FCF_DISCOVERY ;
 int FCF_REDISC_EVT ;
 int FCF_SCAN_DONE ;
 int FCF_TS_INPROG ;
 int FC_VPORT_CVL_RCVD ;
 int KERN_ERR ;
 int KERN_INFO ;
 int KERN_WARNING ;
 int LOG_DISCOVERY ;
 int LOG_FIP ;
 int LOG_SLI ;
 int LPFC_FCOE_FCF_GET_FIRST ;
 int LPFC_FDISC ;





 int NLP_DELAY_TMO ;
 int bf_get (int ,struct lpfc_acqe_fip*) ;
 scalar_t__ jiffies ;
 int lpfc_acqe_fip_fcf_count ;
 struct lpfc_vport** lpfc_create_vport_work_array (struct lpfc_hba*) ;
 int lpfc_destroy_vport_work_array (struct lpfc_hba*,struct lpfc_vport**) ;
 struct lpfc_vport* lpfc_find_vport_by_vpid (struct lpfc_hba*,int) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int,char*,...) ;
 int lpfc_retry_pport_discovery (struct lpfc_hba*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_sli4_clear_fcf_rr_bmask (struct lpfc_hba*) ;
 int lpfc_sli4_fcf_dead_failthrough (struct lpfc_hba*) ;
 int lpfc_sli4_fcf_rr_index_clear (struct lpfc_hba*,int) ;
 int lpfc_sli4_fcf_scan_read_fcf_rec (struct lpfc_hba*,int ) ;
 int lpfc_sli4_perform_all_vport_cvl (struct lpfc_hba*) ;
 struct lpfc_nodelist* lpfc_sli4_perform_vport_cvl (struct lpfc_vport*) ;
 int lpfc_sli4_read_fcf_rec (struct lpfc_hba*,int) ;
 int lpfc_sli4_redisc_fcf_table (struct lpfc_hba*) ;
 int lpfc_trailer_type ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
lpfc_sli4_async_fip_evt(struct lpfc_hba *phba,
   struct lpfc_acqe_fip *acqe_fip)
{
 uint8_t event_type = bf_get(lpfc_trailer_type, acqe_fip);
 int rc;
 struct lpfc_vport *vport;
 struct lpfc_nodelist *ndlp;
 struct Scsi_Host *shost;
 int active_vlink_present;
 struct lpfc_vport **vports;
 int i;

 phba->fc_eventTag = acqe_fip->event_tag;
 phba->fcoe_eventtag = acqe_fip->event_tag;
 switch (event_type) {
 case 128:
 case 130:
  if (event_type == 128)
   lpfc_printf_log(phba, KERN_ERR, LOG_FIP |
     LOG_DISCOVERY,
     "2546 New FCF event, evt_tag:x%x, "
     "index:x%x\n",
     acqe_fip->event_tag,
     acqe_fip->index);
  else
   lpfc_printf_log(phba, KERN_WARNING, LOG_FIP |
     LOG_DISCOVERY,
     "2788 FCF param modified event, "
     "evt_tag:x%x, index:x%x\n",
     acqe_fip->event_tag,
     acqe_fip->index);
  if (phba->fcf.fcf_flag & FCF_DISCOVERY) {





   lpfc_printf_log(phba, KERN_INFO, LOG_FIP |
     LOG_DISCOVERY,
     "2779 Read FCF (x%x) for updating "
     "roundrobin FCF failover bmask\n",
     acqe_fip->index);
   rc = lpfc_sli4_read_fcf_rec(phba, acqe_fip->index);
  }


  spin_lock_irq(&phba->hbalock);
  if (phba->hba_flag & FCF_TS_INPROG) {
   spin_unlock_irq(&phba->hbalock);
   break;
  }

  if (phba->fcf.fcf_flag & FCF_REDISC_EVT) {
   spin_unlock_irq(&phba->hbalock);
   break;
  }


  if (phba->fcf.fcf_flag & FCF_SCAN_DONE) {
   spin_unlock_irq(&phba->hbalock);
   break;
  }
  spin_unlock_irq(&phba->hbalock);


  lpfc_printf_log(phba, KERN_INFO, LOG_FIP | LOG_DISCOVERY,
    "2770 Start FCF table scan per async FCF "
    "event, evt_tag:x%x, index:x%x\n",
    acqe_fip->event_tag, acqe_fip->index);
  rc = lpfc_sli4_fcf_scan_read_fcf_rec(phba,
           LPFC_FCOE_FCF_GET_FIRST);
  if (rc)
   lpfc_printf_log(phba, KERN_ERR, LOG_FIP | LOG_DISCOVERY,
     "2547 Issue FCF scan read FCF mailbox "
     "command failed (x%x)\n", rc);
  break;

 case 129:
  lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
   "2548 FCF Table full count 0x%x tag 0x%x\n",
   bf_get(lpfc_acqe_fip_fcf_count, acqe_fip),
   acqe_fip->event_tag);
  break;

 case 131:
  phba->fcoe_cvl_eventtag = acqe_fip->event_tag;
  lpfc_printf_log(phba, KERN_ERR, LOG_FIP | LOG_DISCOVERY,
   "2549 FCF (x%x) disconnected from network, "
   "tag:x%x\n", acqe_fip->index, acqe_fip->event_tag);




  spin_lock_irq(&phba->hbalock);
  if (phba->fcf.fcf_flag & FCF_DISCOVERY) {
   spin_unlock_irq(&phba->hbalock);

   lpfc_sli4_fcf_rr_index_clear(phba, acqe_fip->index);
   break;
  }
  spin_unlock_irq(&phba->hbalock);


  if (phba->fcf.current_rec.fcf_indx != acqe_fip->index)
   break;







  spin_lock_irq(&phba->hbalock);

  phba->fcf.fcf_flag |= FCF_DEAD_DISC;
  spin_unlock_irq(&phba->hbalock);

  lpfc_printf_log(phba, KERN_INFO, LOG_FIP | LOG_DISCOVERY,
    "2771 Start FCF fast failover process due to "
    "FCF DEAD event: evt_tag:x%x, fcf_index:x%x "
    "\n", acqe_fip->event_tag, acqe_fip->index);
  rc = lpfc_sli4_redisc_fcf_table(phba);
  if (rc) {
   lpfc_printf_log(phba, KERN_ERR, LOG_FIP |
     LOG_DISCOVERY,
     "2772 Issue FCF rediscover mabilbox "
     "command failed, fail through to FCF "
     "dead event\n");
   spin_lock_irq(&phba->hbalock);
   phba->fcf.fcf_flag &= ~FCF_DEAD_DISC;
   spin_unlock_irq(&phba->hbalock);




   lpfc_sli4_fcf_dead_failthrough(phba);
  } else {

   lpfc_sli4_clear_fcf_rr_bmask(phba);




   lpfc_sli4_perform_all_vport_cvl(phba);
  }
  break;
 case 132:
  phba->fcoe_cvl_eventtag = acqe_fip->event_tag;
  lpfc_printf_log(phba, KERN_ERR, LOG_FIP | LOG_DISCOVERY,
   "2718 Clear Virtual Link Received for VPI 0x%x"
   " tag 0x%x\n", acqe_fip->index, acqe_fip->event_tag);

  vport = lpfc_find_vport_by_vpid(phba,
      acqe_fip->index);
  ndlp = lpfc_sli4_perform_vport_cvl(vport);
  if (!ndlp)
   break;
  active_vlink_present = 0;

  vports = lpfc_create_vport_work_array(phba);
  if (vports) {
   for (i = 0; i <= phba->max_vports && vports[i] != ((void*)0);
     i++) {
    if ((!(vports[i]->fc_flag &
     FC_VPORT_CVL_RCVD)) &&
     (vports[i]->port_state > LPFC_FDISC)) {
     active_vlink_present = 1;
     break;
    }
   }
   lpfc_destroy_vport_work_array(phba, vports);
  }

  if (active_vlink_present) {




   mod_timer(&ndlp->nlp_delayfunc,
      jiffies + msecs_to_jiffies(1000));
   shost = lpfc_shost_from_vport(vport);
   spin_lock_irq(shost->host_lock);
   ndlp->nlp_flag |= NLP_DELAY_TMO;
   spin_unlock_irq(shost->host_lock);
   ndlp->nlp_last_elscmd = ELS_CMD_FDISC;
   vport->port_state = LPFC_FDISC;
  } else {







   spin_lock_irq(&phba->hbalock);
   if (phba->fcf.fcf_flag & FCF_DISCOVERY) {
    spin_unlock_irq(&phba->hbalock);
    break;
   }

   phba->fcf.fcf_flag |= FCF_ACVL_DISC;
   spin_unlock_irq(&phba->hbalock);
   lpfc_printf_log(phba, KERN_INFO, LOG_FIP |
     LOG_DISCOVERY,
     "2773 Start FCF failover per CVL, "
     "evt_tag:x%x\n", acqe_fip->event_tag);
   rc = lpfc_sli4_redisc_fcf_table(phba);
   if (rc) {
    lpfc_printf_log(phba, KERN_ERR, LOG_FIP |
      LOG_DISCOVERY,
      "2774 Issue FCF rediscover "
      "mabilbox command failed, "
      "through to CVL event\n");
    spin_lock_irq(&phba->hbalock);
    phba->fcf.fcf_flag &= ~FCF_ACVL_DISC;
    spin_unlock_irq(&phba->hbalock);




    lpfc_retry_pport_discovery(phba);
   } else




    lpfc_sli4_clear_fcf_rr_bmask(phba);
  }
  break;
 default:
  lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
   "0288 Unknown FCoE event type 0x%x event tag "
   "0x%x\n", event_type, acqe_fip->event_tag);
  break;
 }
}
