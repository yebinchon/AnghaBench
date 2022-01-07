
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int fc_flag; int load_flag; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {scalar_t__ nlp_state; } ;
struct lpfc_hba {scalar_t__ link_state; scalar_t__ fc_topology; int link_flag; int pport; } ;
struct fc_vport {scalar_t__ dd_data; } ;
struct Scsi_Host {int host_lock; } ;


 int FC_LOADING ;
 int FC_VPORT_FAILED ;
 int FC_VPORT_LINKDOWN ;
 int FC_VPORT_NEEDS_REG_VPI ;
 int FC_VPORT_NO_FABRIC_SUPP ;
 int Fabric_DID ;
 int KERN_ERR ;
 int LOG_ELS ;
 int LOG_VPORT ;
 scalar_t__ LPFC_LINK_UP ;
 scalar_t__ LPFC_TOPOLOGY_LOOP ;
 int LS_NPIV_FAB_SUPPORTED ;
 scalar_t__ NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 scalar_t__ NLP_STE_UNMAPPED_NODE ;
 int VPORT_OK ;
 struct lpfc_nodelist* lpfc_findnode_did (int ,int ) ;
 int lpfc_initial_fdisc (struct lpfc_vport*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*) ;
 int lpfc_set_disctmo (struct lpfc_vport*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_vport_set_state (struct lpfc_vport*,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static int
enable_vport(struct fc_vport *fc_vport)
{
 struct lpfc_vport *vport = *(struct lpfc_vport **)fc_vport->dd_data;
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_nodelist *ndlp = ((void*)0);
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);

 if ((phba->link_state < LPFC_LINK_UP) ||
     (phba->fc_topology == LPFC_TOPOLOGY_LOOP)) {
  lpfc_vport_set_state(vport, FC_VPORT_LINKDOWN);
  return VPORT_OK;
 }

 spin_lock_irq(shost->host_lock);
 vport->load_flag |= FC_LOADING;
 vport->fc_flag |= FC_VPORT_NEEDS_REG_VPI;
 spin_unlock_irq(shost->host_lock);




 ndlp = lpfc_findnode_did(phba->pport, Fabric_DID);
 if (ndlp && NLP_CHK_NODE_ACT(ndlp)
     && ndlp->nlp_state == NLP_STE_UNMAPPED_NODE) {
  if (phba->link_flag & LS_NPIV_FAB_SUPPORTED) {
   lpfc_set_disctmo(vport);
   lpfc_initial_fdisc(vport);
  } else {
   lpfc_vport_set_state(vport, FC_VPORT_NO_FABRIC_SUPP);
   lpfc_printf_vlog(vport, KERN_ERR, LOG_ELS,
      "0264 No NPIV Fabric support\n");
  }
 } else {
  lpfc_vport_set_state(vport, FC_VPORT_FAILED);
 }
 lpfc_printf_vlog(vport, KERN_ERR, LOG_VPORT,
    "1827 Vport Enabled.\n");
 return VPORT_OK;
}
