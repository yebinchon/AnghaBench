
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_queue {size_t hba_index; int entry_count; int host_index; TYPE_1__* qe; } ;
struct lpfc_eqe {int dummy; } ;
struct TYPE_2__ {struct lpfc_eqe* eqe; } ;


 int bf_get_le32 (int ,struct lpfc_eqe*) ;
 int lpfc_eqe_valid ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct lpfc_eqe *
lpfc_sli4_eq_get(struct lpfc_queue *q)
{
 struct lpfc_eqe *eqe;
 uint32_t idx;


 if (unlikely(!q))
  return ((void*)0);
 eqe = q->qe[q->hba_index].eqe;


 if (!bf_get_le32(lpfc_eqe_valid, eqe))
  return ((void*)0);

 idx = ((q->hba_index + 1) % q->entry_count);
 if (idx == q->host_index)
  return ((void*)0);

 q->hba_index = idx;
 return eqe;
}
