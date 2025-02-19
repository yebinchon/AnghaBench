
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {scalar_t__ port_type; scalar_t__ cfg_restrict_login; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int nlp_type; int nlp_state; void* nlp_prev_state; int nlp_flag; int nlp_fcp_info; } ;
struct TYPE_6__ {scalar_t__ ulpStatus; } ;
struct TYPE_4__ {struct lpfc_iocbq* rsp_iocb; } ;
struct lpfc_iocbq {TYPE_3__ iocb; TYPE_1__ context_un; } ;
struct lpfc_hba {int dummy; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_5__ {scalar_t__ acceptRspCode; scalar_t__ prliType; scalar_t__ Retry; scalar_t__ targetFunc; scalar_t__ initiatorFunc; } ;
typedef TYPE_2__ PRLI ;
typedef TYPE_3__ IOCB_t ;


 scalar_t__ LPFC_NPIV_PORT ;
 int NLP_FCP_2_DEVICE ;
 int NLP_FCP_INITIATOR ;
 int NLP_FCP_TARGET ;
 int NLP_STE_MAPPED_NODE ;
 int NLP_STE_NPR_NODE ;
 void* NLP_STE_PRLI_ISSUE ;
 int NLP_STE_UNMAPPED_NODE ;
 int NLP_TARGET_REMOVE ;
 scalar_t__ PRLI_FCP_TYPE ;
 scalar_t__ PRLI_REQ_EXECUTED ;
 scalar_t__ lpfc_check_elscmpl_iocb (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*) ;
 int lpfc_issue_els_logo (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 int lpfc_nlp_set_state (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static uint32_t
lpfc_cmpl_prli_prli_issue(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
     void *arg, uint32_t evt)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_iocbq *cmdiocb, *rspiocb;
 struct lpfc_hba *phba = vport->phba;
 IOCB_t *irsp;
 PRLI *npr;

 cmdiocb = (struct lpfc_iocbq *) arg;
 rspiocb = cmdiocb->context_un.rsp_iocb;
 npr = (PRLI *)lpfc_check_elscmpl_iocb(phba, cmdiocb, rspiocb);

 irsp = &rspiocb->iocb;
 if (irsp->ulpStatus) {
  if ((vport->port_type == LPFC_NPIV_PORT) &&
      vport->cfg_restrict_login) {
   goto out;
  }
  ndlp->nlp_prev_state = NLP_STE_PRLI_ISSUE;
  lpfc_nlp_set_state(vport, ndlp, NLP_STE_UNMAPPED_NODE);
  return ndlp->nlp_state;
 }


 ndlp->nlp_type &= ~(NLP_FCP_TARGET | NLP_FCP_INITIATOR);
 ndlp->nlp_fcp_info &= ~NLP_FCP_2_DEVICE;
 if ((npr->acceptRspCode == PRLI_REQ_EXECUTED) &&
     (npr->prliType == PRLI_FCP_TYPE)) {
  if (npr->initiatorFunc)
   ndlp->nlp_type |= NLP_FCP_INITIATOR;
  if (npr->targetFunc)
   ndlp->nlp_type |= NLP_FCP_TARGET;
  if (npr->Retry)
   ndlp->nlp_fcp_info |= NLP_FCP_2_DEVICE;
 }
 if (!(ndlp->nlp_type & NLP_FCP_TARGET) &&
     (vport->port_type == LPFC_NPIV_PORT) &&
      vport->cfg_restrict_login) {
out:
  spin_lock_irq(shost->host_lock);
  ndlp->nlp_flag |= NLP_TARGET_REMOVE;
  spin_unlock_irq(shost->host_lock);
  lpfc_issue_els_logo(vport, ndlp, 0);

  ndlp->nlp_prev_state = NLP_STE_PRLI_ISSUE;
  lpfc_nlp_set_state(vport, ndlp, NLP_STE_NPR_NODE);
  return ndlp->nlp_state;
 }

 ndlp->nlp_prev_state = NLP_STE_PRLI_ISSUE;
 if (ndlp->nlp_type & NLP_FCP_TARGET)
  lpfc_nlp_set_state(vport, ndlp, NLP_STE_MAPPED_NODE);
 else
  lpfc_nlp_set_state(vport, ndlp, NLP_STE_UNMAPPED_NODE);
 return ndlp->nlp_state;
}
