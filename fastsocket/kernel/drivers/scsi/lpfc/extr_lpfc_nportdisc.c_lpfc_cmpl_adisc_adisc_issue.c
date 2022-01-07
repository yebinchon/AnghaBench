
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int nlp_type; int nlp_state; void* nlp_prev_state; int nlp_portname; int nlp_nodename; int nlp_last_elscmd; int nlp_flag; int nlp_delayfunc; } ;
struct lpfc_name {int dummy; } ;
struct TYPE_5__ {scalar_t__ ulpStatus; } ;
struct TYPE_4__ {struct lpfc_iocbq* rsp_iocb; } ;
struct lpfc_iocbq {TYPE_2__ iocb; TYPE_1__ context_un; } ;
struct lpfc_hba {scalar_t__ sli_rev; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_6__ {int portName; int nodeName; } ;
typedef TYPE_2__ IOCB_t ;
typedef TYPE_3__ ADISC ;


 int ELS_CMD_PLOGI ;
 scalar_t__ LPFC_SLI_REV4 ;
 int NLP_DELAY_TMO ;
 int NLP_FCP_TARGET ;
 void* NLP_STE_ADISC_ISSUE ;
 int NLP_STE_MAPPED_NODE ;
 int NLP_STE_NPR_NODE ;
 int NLP_STE_UNMAPPED_NODE ;
 scalar_t__ jiffies ;
 int lpfc_check_adisc (struct lpfc_vport*,struct lpfc_nodelist*,int *,int *) ;
 scalar_t__ lpfc_check_elscmpl_iocb (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*) ;
 int lpfc_nlp_set_state (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_sli4_resume_rpi (struct lpfc_nodelist*,int *,int *) ;
 int lpfc_unreg_rpi (struct lpfc_vport*,struct lpfc_nodelist*) ;
 int memset (int *,int ,int) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static uint32_t
lpfc_cmpl_adisc_adisc_issue(struct lpfc_vport *vport,
       struct lpfc_nodelist *ndlp,
       void *arg, uint32_t evt)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_iocbq *cmdiocb, *rspiocb;
 IOCB_t *irsp;
 ADISC *ap;
 int rc;

 cmdiocb = (struct lpfc_iocbq *) arg;
 rspiocb = cmdiocb->context_un.rsp_iocb;

 ap = (ADISC *)lpfc_check_elscmpl_iocb(phba, cmdiocb, rspiocb);
 irsp = &rspiocb->iocb;

 if ((irsp->ulpStatus) ||
     (!lpfc_check_adisc(vport, ndlp, &ap->nodeName, &ap->portName))) {

  mod_timer(&ndlp->nlp_delayfunc,
     jiffies + msecs_to_jiffies(1000));
  spin_lock_irq(shost->host_lock);
  ndlp->nlp_flag |= NLP_DELAY_TMO;
  spin_unlock_irq(shost->host_lock);
  ndlp->nlp_last_elscmd = ELS_CMD_PLOGI;

  memset(&ndlp->nlp_nodename, 0, sizeof(struct lpfc_name));
  memset(&ndlp->nlp_portname, 0, sizeof(struct lpfc_name));

  ndlp->nlp_prev_state = NLP_STE_ADISC_ISSUE;
  lpfc_nlp_set_state(vport, ndlp, NLP_STE_NPR_NODE);
  lpfc_unreg_rpi(vport, ndlp);
  return ndlp->nlp_state;
 }

 if (phba->sli_rev == LPFC_SLI_REV4) {
  rc = lpfc_sli4_resume_rpi(ndlp, ((void*)0), ((void*)0));
  if (rc) {

   ndlp->nlp_prev_state = NLP_STE_ADISC_ISSUE;
   return ndlp->nlp_state;
  }
 }

 if (ndlp->nlp_type & NLP_FCP_TARGET) {
  ndlp->nlp_prev_state = NLP_STE_ADISC_ISSUE;
  lpfc_nlp_set_state(vport, ndlp, NLP_STE_MAPPED_NODE);
 } else {
  ndlp->nlp_prev_state = NLP_STE_ADISC_ISSUE;
  lpfc_nlp_set_state(vport, ndlp, NLP_STE_UNMAPPED_NODE);
 }

 return ndlp->nlp_state;
}
