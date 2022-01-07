
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lpfc_register {scalar_t__ word0; } ;
struct lpfc_queue {int queue_id; TYPE_2__* phba; } ;
struct TYPE_3__ {int EQCQDBregaddr; } ;
struct TYPE_4__ {TYPE_1__ sli4_hba; } ;


 int LPFC_EQID_HI_FIELD_SHIFT ;
 int LPFC_QUEUE_TYPE_EVENT ;
 int bf_set (int ,struct lpfc_register*,int) ;
 int lpfc_eqcq_doorbell_eqci ;
 int lpfc_eqcq_doorbell_eqid_hi ;
 int lpfc_eqcq_doorbell_eqid_lo ;
 int lpfc_eqcq_doorbell_qt ;
 int writel (scalar_t__,int ) ;

__attribute__((used)) static inline void
lpfc_sli4_eq_clr_intr(struct lpfc_queue *q)
{
 struct lpfc_register doorbell;

 doorbell.word0 = 0;
 bf_set(lpfc_eqcq_doorbell_eqci, &doorbell, 1);
 bf_set(lpfc_eqcq_doorbell_qt, &doorbell, LPFC_QUEUE_TYPE_EVENT);
 bf_set(lpfc_eqcq_doorbell_eqid_hi, &doorbell,
  (q->queue_id >> LPFC_EQID_HI_FIELD_SHIFT));
 bf_set(lpfc_eqcq_doorbell_eqid_lo, &doorbell, q->queue_id);
 writel(doorbell.word0, q->phba->sli4_hba.EQCQDBregaddr);
}
