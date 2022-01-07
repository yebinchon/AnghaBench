
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int vpi_state; int fc_flag; int port_state; } ;
struct lpfc_nodelist {int dummy; } ;
struct lpfc_hba {int sli3_options; int max_vports; scalar_t__ sli_rev; struct lpfc_vport* pport; } ;
struct Scsi_Host {int host_lock; } ;


 int FC_VPORT_NEEDS_INIT_VPI ;
 int Fabric_DID ;
 int LPFC_SLI3_NPIV_ENABLED ;
 scalar_t__ LPFC_SLI_REV4 ;
 int LPFC_VPI_REGISTERED ;
 int LPFC_VPORT_UNKNOWN ;
 int lpfc_cancel_retry_delay_tmo (struct lpfc_vport*,struct lpfc_nodelist*) ;
 int lpfc_cleanup_pending_mbox (struct lpfc_vport*) ;
 struct lpfc_vport** lpfc_create_vport_work_array (struct lpfc_hba*) ;
 int lpfc_destroy_vport_work_array (struct lpfc_hba*,struct lpfc_vport**) ;
 int lpfc_els_flush_all_cmd (struct lpfc_hba*) ;
 scalar_t__ lpfc_fcf_inuse (struct lpfc_hba*) ;
 struct lpfc_nodelist* lpfc_findnode_did (struct lpfc_vport*,int ) ;
 int lpfc_issue_unreg_vfi (struct lpfc_vport*) ;
 int lpfc_mbx_unreg_vpi (struct lpfc_vport*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_sli4_unreg_all_rpis (struct lpfc_vport*) ;
 int lpfc_unreg_hba_rpis (struct lpfc_hba*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

int
lpfc_unregister_fcf_prep(struct lpfc_hba *phba)
{
 struct lpfc_vport **vports;
 struct lpfc_nodelist *ndlp;
 struct Scsi_Host *shost;
 int i = 0, rc;


 if (lpfc_fcf_inuse(phba))
  lpfc_unreg_hba_rpis(phba);


 phba->pport->port_state = LPFC_VPORT_UNKNOWN;


 vports = lpfc_create_vport_work_array(phba);
 if (vports && (phba->sli3_options & LPFC_SLI3_NPIV_ENABLED))
  for (i = 0; i <= phba->max_vports && vports[i] != ((void*)0); i++) {

   ndlp = lpfc_findnode_did(vports[i], Fabric_DID);
   if (ndlp)
    lpfc_cancel_retry_delay_tmo(vports[i], ndlp);
   lpfc_cleanup_pending_mbox(vports[i]);
   if (phba->sli_rev == LPFC_SLI_REV4)
    lpfc_sli4_unreg_all_rpis(vports[i]);
   lpfc_mbx_unreg_vpi(vports[i]);
   shost = lpfc_shost_from_vport(vports[i]);
   spin_lock_irq(shost->host_lock);
   vports[i]->fc_flag |= FC_VPORT_NEEDS_INIT_VPI;
   vports[i]->vpi_state &= ~LPFC_VPI_REGISTERED;
   spin_unlock_irq(shost->host_lock);
  }
 lpfc_destroy_vport_work_array(phba, vports);
 if (i == 0 && (!(phba->sli3_options & LPFC_SLI3_NPIV_ENABLED))) {
  ndlp = lpfc_findnode_did(phba->pport, Fabric_DID);
  if (ndlp)
   lpfc_cancel_retry_delay_tmo(phba->pport, ndlp);
  lpfc_cleanup_pending_mbox(phba->pport);
  if (phba->sli_rev == LPFC_SLI_REV4)
   lpfc_sli4_unreg_all_rpis(phba->pport);
  lpfc_mbx_unreg_vpi(phba->pport);
  shost = lpfc_shost_from_vport(phba->pport);
  spin_lock_irq(shost->host_lock);
  phba->pport->fc_flag |= FC_VPORT_NEEDS_INIT_VPI;
  phba->pport->vpi_state &= ~LPFC_VPI_REGISTERED;
  spin_unlock_irq(shost->host_lock);
 }


 lpfc_els_flush_all_cmd(phba);


 rc = lpfc_issue_unreg_vfi(phba->pport);
 return rc;
}
