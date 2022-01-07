
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int nlp_state; int nlp_flag; } ;
struct TYPE_4__ {scalar_t__ ulpStatus; } ;
struct TYPE_3__ {struct lpfc_iocbq* rsp_iocb; } ;
struct lpfc_iocbq {TYPE_2__ iocb; TYPE_1__ context_un; } ;
struct Scsi_Host {int host_lock; } ;
typedef TYPE_2__ IOCB_t ;


 int NLP_DEFER_RM ;
 int NLP_STE_FREED_NODE ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static uint32_t
lpfc_cmpl_plogi_npr_node(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
    void *arg, uint32_t evt)
{
 struct lpfc_iocbq *cmdiocb, *rspiocb;
 IOCB_t *irsp;
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);

 cmdiocb = (struct lpfc_iocbq *) arg;
 rspiocb = cmdiocb->context_un.rsp_iocb;

 irsp = &rspiocb->iocb;
 if (irsp->ulpStatus) {
  spin_lock_irq(shost->host_lock);
  ndlp->nlp_flag |= NLP_DEFER_RM;
  spin_unlock_irq(shost->host_lock);
  return NLP_STE_FREED_NODE;
 }
 return ndlp->nlp_state;
}
