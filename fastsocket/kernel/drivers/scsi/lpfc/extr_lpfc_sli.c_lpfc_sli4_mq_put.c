
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_register {scalar_t__ word0; } ;
struct lpfc_queue {size_t host_index; int entry_count; int hba_index; int queue_id; TYPE_3__* phba; int entry_size; TYPE_1__* qe; } ;
struct lpfc_mqe {int dummy; } ;
struct TYPE_5__ {int MQDBregaddr; } ;
struct TYPE_6__ {TYPE_2__ sli4_hba; int * mbox; } ;
struct TYPE_4__ {struct lpfc_mqe* mqe; } ;
typedef int MAILBOX_t ;


 int ENOMEM ;
 int bf_set (int ,struct lpfc_register*,int) ;
 int lpfc_mq_doorbell_id ;
 int lpfc_mq_doorbell_num_posted ;
 int lpfc_sli_pcimem_bcopy (struct lpfc_mqe*,struct lpfc_mqe*,int ) ;
 scalar_t__ unlikely (int) ;
 int writel (scalar_t__,int ) ;

__attribute__((used)) static uint32_t
lpfc_sli4_mq_put(struct lpfc_queue *q, struct lpfc_mqe *mqe)
{
 struct lpfc_mqe *temp_mqe;
 struct lpfc_register doorbell;
 uint32_t host_index;


 if (unlikely(!q))
  return -ENOMEM;
 temp_mqe = q->qe[q->host_index].mqe;


 if (((q->host_index + 1) % q->entry_count) == q->hba_index)
  return -ENOMEM;
 lpfc_sli_pcimem_bcopy(mqe, temp_mqe, q->entry_size);

 q->phba->mbox = (MAILBOX_t *)temp_mqe;


 host_index = q->host_index;
 q->host_index = ((q->host_index + 1) % q->entry_count);


 doorbell.word0 = 0;
 bf_set(lpfc_mq_doorbell_num_posted, &doorbell, 1);
 bf_set(lpfc_mq_doorbell_id, &doorbell, q->queue_id);
 writel(doorbell.word0, q->phba->sli4_hba.MQDBregaddr);
 return 0;
}
