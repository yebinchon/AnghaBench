
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct lpfc_wcqe_complete {int dummy; } ;
struct TYPE_7__ {int iocb_event; } ;
struct lpfc_sli_ring {int ring_lock; TYPE_3__ stats; } ;
struct TYPE_5__ {struct lpfc_wcqe_complete wcqe_cmpl; } ;
struct TYPE_6__ {TYPE_1__ cqe; } ;
struct lpfc_iocbq {TYPE_2__ cq_event; } ;
struct TYPE_8__ {struct lpfc_sli_ring* ring; } ;
struct lpfc_hba {TYPE_4__ sli; } ;


 int KERN_WARNING ;
 int LOG_SLI ;
 size_t LPFC_ELS_RING ;
 int bf_get (int ,struct lpfc_wcqe_complete*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int ) ;
 int lpfc_sli4_iocb_param_transfer (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*,struct lpfc_wcqe_complete*) ;
 struct lpfc_iocbq* lpfc_sli_iocbq_lookup_by_tag (struct lpfc_hba*,struct lpfc_sli_ring*,int ) ;
 int lpfc_sli_release_iocbq (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int lpfc_wcqe_c_request_tag ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct lpfc_iocbq *
lpfc_sli4_els_wcqe_to_rspiocbq(struct lpfc_hba *phba,
          struct lpfc_iocbq *irspiocbq)
{
 struct lpfc_sli_ring *pring = &phba->sli.ring[LPFC_ELS_RING];
 struct lpfc_iocbq *cmdiocbq;
 struct lpfc_wcqe_complete *wcqe;
 unsigned long iflags;

 wcqe = &irspiocbq->cq_event.cqe.wcqe_cmpl;
 spin_lock_irqsave(&pring->ring_lock, iflags);
 pring->stats.iocb_event++;

 cmdiocbq = lpfc_sli_iocbq_lookup_by_tag(phba, pring,
    bf_get(lpfc_wcqe_c_request_tag, wcqe));
 spin_unlock_irqrestore(&pring->ring_lock, iflags);

 if (unlikely(!cmdiocbq)) {
  lpfc_printf_log(phba, KERN_WARNING, LOG_SLI,
    "0386 ELS complete with no corresponding "
    "cmdiocb: iotag (%d)\n",
    bf_get(lpfc_wcqe_c_request_tag, wcqe));
  lpfc_sli_release_iocbq(phba, irspiocbq);
  return ((void*)0);
 }


 lpfc_sli4_iocb_param_transfer(phba, irspiocbq, cmdiocbq, wcqe);

 return irspiocbq;
}
