
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_queue {size_t hba_index; int entry_count; int host_index; TYPE_1__* qe; } ;
struct lpfc_cqe {int dummy; } ;
struct TYPE_2__ {struct lpfc_cqe* cqe; } ;


 int bf_get_le32 (int ,struct lpfc_cqe*) ;
 int lpfc_cqe_valid ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct lpfc_cqe *
lpfc_sli4_cq_get(struct lpfc_queue *q)
{
 struct lpfc_cqe *cqe;
 uint32_t idx;


 if (unlikely(!q))
  return ((void*)0);


 if (!bf_get_le32(lpfc_cqe_valid, q->qe[q->hba_index].cqe))
  return ((void*)0);

 idx = ((q->hba_index + 1) % q->entry_count);
 if (idx == q->host_index)
  return ((void*)0);

 cqe = q->qe[q->hba_index].cqe;
 q->hba_index = idx;
 return cqe;
}
