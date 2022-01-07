
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sp_cqe_event_pool; } ;
struct lpfc_hba {TYPE_1__ sli4_hba; } ;
struct lpfc_cq_event {int list; } ;


 int list_add_tail (int *,int *) ;

void
__lpfc_sli4_cq_event_release(struct lpfc_hba *phba,
        struct lpfc_cq_event *cq_event)
{
 list_add_tail(&cq_event->list, &phba->sli4_hba.sp_cqe_event_pool);
}
