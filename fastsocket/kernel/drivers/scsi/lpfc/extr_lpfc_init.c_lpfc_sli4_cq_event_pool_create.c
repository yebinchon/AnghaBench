
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cq_ecount; int sp_cqe_event_pool; } ;
struct lpfc_hba {TYPE_1__ sli4_hba; } ;
struct lpfc_cq_event {int list; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct lpfc_cq_event* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int lpfc_sli4_cq_event_pool_destroy (struct lpfc_hba*) ;

__attribute__((used)) static int
lpfc_sli4_cq_event_pool_create(struct lpfc_hba *phba)
{
 struct lpfc_cq_event *cq_event;
 int i;

 for (i = 0; i < (4 * phba->sli4_hba.cq_ecount); i++) {
  cq_event = kmalloc(sizeof(struct lpfc_cq_event), GFP_KERNEL);
  if (!cq_event)
   goto out_pool_create_fail;
  list_add_tail(&cq_event->list,
         &phba->sli4_hba.sp_cqe_event_pool);
 }
 return 0;

out_pool_create_fail:
 lpfc_sli4_cq_event_pool_destroy(phba);
 return -ENOMEM;
}
