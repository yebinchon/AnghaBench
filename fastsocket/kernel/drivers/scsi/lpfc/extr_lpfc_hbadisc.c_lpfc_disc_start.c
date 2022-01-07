
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_vport {scalar_t__ port_state; scalar_t__ fc_prevDID; scalar_t__ fc_myDID; int fc_flag; scalar_t__ port_type; scalar_t__ fc_rscn_id_cnt; scalar_t__ num_disc_nodes; scalar_t__ fc_npr_cnt; int fc_adisc_cnt; int fc_plogi_cnt; struct lpfc_hba* phba; } ;
struct lpfc_hba {scalar_t__ link_state; int sli3_options; scalar_t__ sli_rev; } ;
struct Scsi_Host {int host_lock; } ;


 int FC_ABORT_DISCOVERY ;
 int FC_NDISC_ACTIVE ;
 int FC_PT2PT ;
 int FC_RSCN_DISCOVERY ;
 int FC_RSCN_MODE ;
 int KERN_INFO ;
 int LOG_DISCOVERY ;
 int LOG_SLI ;
 scalar_t__ LPFC_CLEAR_LA ;
 scalar_t__ LPFC_DISC_AUTH ;
 scalar_t__ LPFC_PHYSICAL_PORT ;
 int LPFC_SLI3_NPIV_ENABLED ;
 scalar_t__ LPFC_SLI_REV4 ;
 scalar_t__ LPFC_VPORT_READY ;
 int lpfc_can_disctmo (struct lpfc_vport*) ;
 int lpfc_els_disc_adisc (struct lpfc_vport*) ;
 int lpfc_els_disc_plogi (struct lpfc_vport*) ;
 int lpfc_els_handle_rscn (struct lpfc_vport*) ;
 int lpfc_is_link_up (struct lpfc_hba*) ;
 int lpfc_issue_clear_la (struct lpfc_hba*,struct lpfc_vport*) ;
 int lpfc_issue_reg_vpi (struct lpfc_hba*,struct lpfc_vport*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,scalar_t__,...) ;
 int lpfc_set_disctmo (struct lpfc_vport*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

void
lpfc_disc_start(struct lpfc_vport *vport)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_hba *phba = vport->phba;
 uint32_t num_sent;
 uint32_t clear_la_pending;
 int did_changed;

 if (!lpfc_is_link_up(phba)) {
  lpfc_printf_vlog(vport, KERN_INFO, LOG_SLI,
     "3315 Link is not up %x\n",
     phba->link_state);
  return;
 }

 if (phba->link_state == LPFC_CLEAR_LA)
  clear_la_pending = 1;
 else
  clear_la_pending = 0;

 if (vport->port_state < LPFC_VPORT_READY)
  vport->port_state = LPFC_DISC_AUTH;

 lpfc_set_disctmo(vport);

 if (vport->fc_prevDID == vport->fc_myDID)
  did_changed = 0;
 else
  did_changed = 1;

 vport->fc_prevDID = vport->fc_myDID;
 vport->num_disc_nodes = 0;


 lpfc_printf_vlog(vport, KERN_INFO, LOG_DISCOVERY,
    "0202 Start Discovery hba state x%x "
    "Data: x%x x%x x%x\n",
    vport->port_state, vport->fc_flag, vport->fc_plogi_cnt,
    vport->fc_adisc_cnt);


 num_sent = lpfc_els_disc_adisc(vport);

 if (num_sent)
  return;


 if ((phba->sli3_options & LPFC_SLI3_NPIV_ENABLED) &&
     !(vport->fc_flag & FC_PT2PT) &&
     !(vport->fc_flag & FC_RSCN_MODE) &&
     (phba->sli_rev < LPFC_SLI_REV4)) {
  if (vport->port_type == LPFC_PHYSICAL_PORT)
   lpfc_issue_clear_la(phba, vport);
  lpfc_issue_reg_vpi(phba, vport);
  return;
 }





 if (vport->port_state < LPFC_VPORT_READY && !clear_la_pending) {

  if (vport->port_type == LPFC_PHYSICAL_PORT)
   lpfc_issue_clear_la(phba, vport);

  if (!(vport->fc_flag & FC_ABORT_DISCOVERY)) {
   vport->num_disc_nodes = 0;

   if (vport->fc_npr_cnt)
    lpfc_els_disc_plogi(vport);

   if (!vport->num_disc_nodes) {
    spin_lock_irq(shost->host_lock);
    vport->fc_flag &= ~FC_NDISC_ACTIVE;
    spin_unlock_irq(shost->host_lock);
    lpfc_can_disctmo(vport);
   }
  }
  vport->port_state = LPFC_VPORT_READY;
 } else {

  num_sent = lpfc_els_disc_plogi(vport);

  if (num_sent)
   return;

  if (vport->fc_flag & FC_RSCN_MODE) {



   if ((vport->fc_rscn_id_cnt == 0) &&
       (!(vport->fc_flag & FC_RSCN_DISCOVERY))) {
    spin_lock_irq(shost->host_lock);
    vport->fc_flag &= ~FC_RSCN_MODE;
    spin_unlock_irq(shost->host_lock);
    lpfc_can_disctmo(vport);
   } else
    lpfc_els_handle_rscn(vport);
  }
 }
 return;
}
