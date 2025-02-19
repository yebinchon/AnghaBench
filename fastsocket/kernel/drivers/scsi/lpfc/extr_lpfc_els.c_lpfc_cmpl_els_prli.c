
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct lpfc_vport {int fc_prli_sent; int num_disc_nodes; } ;
struct lpfc_sli {int dummy; } ;
struct lpfc_nodelist {int nlp_DID; int nlp_flag; } ;
struct TYPE_6__ {int * ulpWord; } ;
struct TYPE_7__ {TYPE_2__ un; scalar_t__ ulpStatus; int ulpTimeout; } ;
struct TYPE_5__ {struct lpfc_iocbq* rsp_iocb; } ;
struct lpfc_iocbq {scalar_t__ context1; TYPE_3__ iocb; TYPE_1__ context_un; struct lpfc_vport* vport; } ;
struct lpfc_hba {struct lpfc_sli sli; } ;
struct Scsi_Host {int host_lock; } ;
typedef TYPE_3__ IOCB_t ;


 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_ELS ;
 int LPFC_DISC_TRC_ELS_CMD ;
 int NLP_EVT_CMPL_PRLI ;
 int NLP_PRLI_SND ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,scalar_t__,int ,int ) ;
 int lpfc_disc_state_machine (struct lpfc_vport*,struct lpfc_nodelist*,struct lpfc_iocbq*,int ) ;
 scalar_t__ lpfc_els_chk_latt (struct lpfc_vport*) ;
 int lpfc_els_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 scalar_t__ lpfc_els_retry (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*) ;
 scalar_t__ lpfc_error_lost_link (TYPE_3__*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int ,scalar_t__,int ,...) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static void
lpfc_cmpl_els_prli(struct lpfc_hba *phba, struct lpfc_iocbq *cmdiocb,
     struct lpfc_iocbq *rspiocb)
{
 struct lpfc_vport *vport = cmdiocb->vport;
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 IOCB_t *irsp;
 struct lpfc_sli *psli;
 struct lpfc_nodelist *ndlp;

 psli = &phba->sli;

 cmdiocb->context_un.rsp_iocb = rspiocb;

 irsp = &(rspiocb->iocb);
 ndlp = (struct lpfc_nodelist *) cmdiocb->context1;
 spin_lock_irq(shost->host_lock);
 ndlp->nlp_flag &= ~NLP_PRLI_SND;
 spin_unlock_irq(shost->host_lock);

 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_ELS_CMD,
  "PRLI cmpl:       status:x%x/x%x did:x%x",
  irsp->ulpStatus, irsp->un.ulpWord[4],
  ndlp->nlp_DID);

 lpfc_printf_vlog(vport, KERN_INFO, LOG_ELS,
    "0103 PRLI completes to NPort x%x "
    "Data: x%x x%x x%x x%x\n",
    ndlp->nlp_DID, irsp->ulpStatus, irsp->un.ulpWord[4],
    irsp->ulpTimeout, vport->num_disc_nodes);

 vport->fc_prli_sent--;

 if (lpfc_els_chk_latt(vport))
  goto out;

 if (irsp->ulpStatus) {

  if (lpfc_els_retry(phba, cmdiocb, rspiocb)) {

   goto out;
  }

  lpfc_printf_vlog(vport, KERN_ERR, LOG_ELS,
     "2754 PRLI failure DID:%06X Status:x%x/x%x\n",
     ndlp->nlp_DID, irsp->ulpStatus,
     irsp->un.ulpWord[4]);

  if (lpfc_error_lost_link(irsp))
   goto out;
  else
   lpfc_disc_state_machine(vport, ndlp, cmdiocb,
      NLP_EVT_CMPL_PRLI);
 } else

  lpfc_disc_state_machine(vport, ndlp, cmdiocb,
     NLP_EVT_CMPL_PRLI);
out:
 lpfc_els_free_iocb(phba, cmdiocb);
 return;
}
