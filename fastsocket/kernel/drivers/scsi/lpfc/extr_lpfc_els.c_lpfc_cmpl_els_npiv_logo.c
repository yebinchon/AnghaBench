
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct lpfc_vport {int fc_flag; int num_disc_nodes; int unreg_vpi_cmpl; } ;
struct lpfc_nodelist {int nlp_DID; } ;
struct TYPE_4__ {int remoteID; } ;
struct TYPE_5__ {int * ulpWord; TYPE_1__ rcvels; } ;
struct TYPE_6__ {scalar_t__ ulpStatus; int ulpTimeout; TYPE_2__ un; } ;
struct lpfc_iocbq {TYPE_3__ iocb; scalar_t__ context1; struct lpfc_vport* vport; } ;
struct lpfc_hba {int dummy; } ;
struct Scsi_Host {int host_lock; } ;
typedef TYPE_3__ IOCB_t ;


 int FC_FABRIC ;
 scalar_t__ IOSTAT_SUCCESS ;
 int KERN_INFO ;
 int LOG_ELS ;
 int LPFC_DISC_TRC_ELS_CMD ;
 int VPORT_ERROR ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,scalar_t__,int ,int ) ;
 int lpfc_els_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int ,scalar_t__,int ,int ,int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static void
lpfc_cmpl_els_npiv_logo(struct lpfc_hba *phba, struct lpfc_iocbq *cmdiocb,
   struct lpfc_iocbq *rspiocb)
{
 struct lpfc_vport *vport = cmdiocb->vport;
 IOCB_t *irsp;
 struct lpfc_nodelist *ndlp;
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);

 ndlp = (struct lpfc_nodelist *)cmdiocb->context1;
 irsp = &rspiocb->iocb;
 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_ELS_CMD,
  "LOGO npiv cmpl:  status:x%x/x%x did:x%x",
  irsp->ulpStatus, irsp->un.ulpWord[4], irsp->un.rcvels.remoteID);

 lpfc_els_free_iocb(phba, cmdiocb);
 vport->unreg_vpi_cmpl = VPORT_ERROR;


 lpfc_nlp_put(ndlp);


 lpfc_printf_vlog(vport, KERN_INFO, LOG_ELS,
    "2928 NPIV LOGO completes to NPort x%x "
    "Data: x%x x%x x%x x%x\n",
    ndlp->nlp_DID, irsp->ulpStatus, irsp->un.ulpWord[4],
    irsp->ulpTimeout, vport->num_disc_nodes);

 if (irsp->ulpStatus == IOSTAT_SUCCESS) {
  spin_lock_irq(shost->host_lock);
  vport->fc_flag &= ~FC_FABRIC;
  spin_unlock_irq(shost->host_lock);
 }
}
