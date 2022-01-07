
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int lsRjtRsnCodeExp; int lsRjtRsnCode; } ;
struct TYPE_4__ {int lsRjtError; TYPE_1__ b; } ;
struct ls_rjt {TYPE_2__ un; } ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int nlp_flag; int nlp_state; int nlp_DID; void* nlp_prev_state; } ;
struct lpfc_iocbq {int dummy; } ;
struct Scsi_Host {int host_lock; } ;


 int LSEXP_NOTHING_MORE ;
 int LSRJT_UNABLE_TPC ;
 int NLP_DELAY_TMO ;
 int NLP_NPR_ADISC ;
 int NLP_STE_ADISC_ISSUE ;
 void* NLP_STE_NPR_NODE ;
 int NLP_STE_PLOGI_ISSUE ;
 int lpfc_els_rsp_reject (struct lpfc_vport*,int ,struct lpfc_iocbq*,struct lpfc_nodelist*,int *) ;
 int lpfc_issue_els_adisc (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 int lpfc_issue_els_plogi (struct lpfc_vport*,int ,int ) ;
 int lpfc_nlp_set_state (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int memset (struct ls_rjt*,int ,int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static uint32_t
lpfc_rcv_prli_npr_node(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
         void *arg, uint32_t evt)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_iocbq *cmdiocb = (struct lpfc_iocbq *) arg;
 struct ls_rjt stat;

 memset(&stat, 0, sizeof (struct ls_rjt));
 stat.un.b.lsRjtRsnCode = LSRJT_UNABLE_TPC;
 stat.un.b.lsRjtRsnCodeExp = LSEXP_NOTHING_MORE;
 lpfc_els_rsp_reject(vport, stat.un.lsRjtError, cmdiocb, ndlp, ((void*)0));

 if (!(ndlp->nlp_flag & NLP_DELAY_TMO)) {
  if (ndlp->nlp_flag & NLP_NPR_ADISC) {
   spin_lock_irq(shost->host_lock);
   ndlp->nlp_flag &= ~NLP_NPR_ADISC;
   ndlp->nlp_prev_state = NLP_STE_NPR_NODE;
   spin_unlock_irq(shost->host_lock);
   lpfc_nlp_set_state(vport, ndlp, NLP_STE_ADISC_ISSUE);
   lpfc_issue_els_adisc(vport, ndlp, 0);
  } else {
   ndlp->nlp_prev_state = NLP_STE_NPR_NODE;
   lpfc_nlp_set_state(vport, ndlp, NLP_STE_PLOGI_ISSUE);
   lpfc_issue_els_plogi(vport, ndlp->nlp_DID, 0);
  }
 }
 return ndlp->nlp_state;
}
