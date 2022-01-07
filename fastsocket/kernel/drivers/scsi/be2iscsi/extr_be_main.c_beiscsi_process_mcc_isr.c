
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int used; } ;
struct be_queue_info {int id; } ;
struct TYPE_5__ {TYPE_1__ q; struct be_queue_info cq; } ;
struct TYPE_6__ {TYPE_2__ mcc_obj; } ;
struct beiscsi_hba {TYPE_3__ ctrl; } ;
struct be_mcc_compl {int flags; } ;
struct be_async_event_link_state {int dummy; } ;


 int BEISCSI_LOG_MBOX ;
 int CQE_FLAGS_ASYNC_MASK ;
 int CQE_FLAGS_COMPLETED_MASK ;
 int CQE_FLAGS_VALID_MASK ;
 int KERN_ERR ;
 int atomic_dec (int *) ;
 int be_mcc_compl_process_isr (TYPE_3__*,struct be_mcc_compl*) ;
 int beiscsi_async_link_state_process (struct beiscsi_hba*,struct be_async_event_link_state*) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,int) ;
 int hwi_ring_cq_db (struct beiscsi_hba*,int ,unsigned int,int,int ) ;
 scalar_t__ is_link_state_evt (int) ;
 void* le32_to_cpu (int) ;
 int queue_tail_inc (struct be_queue_info*) ;
 struct be_mcc_compl* queue_tail_node (struct be_queue_info*) ;

__attribute__((used)) static void beiscsi_process_mcc_isr(struct beiscsi_hba *phba)
{
 struct be_queue_info *mcc_cq;
 struct be_mcc_compl *mcc_compl;
 unsigned int num_processed = 0;

 mcc_cq = &phba->ctrl.mcc_obj.cq;
 mcc_compl = queue_tail_node(mcc_cq);
 mcc_compl->flags = le32_to_cpu(mcc_compl->flags);
 while (mcc_compl->flags & CQE_FLAGS_VALID_MASK) {

  if (num_processed >= 32) {
   hwi_ring_cq_db(phba, mcc_cq->id,
     num_processed, 0, 0);
   num_processed = 0;
  }
  if (mcc_compl->flags & CQE_FLAGS_ASYNC_MASK) {

   if (is_link_state_evt(mcc_compl->flags))

    beiscsi_async_link_state_process(phba,
    (struct be_async_event_link_state *) mcc_compl);
   else
    beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_MBOX,
         "BM_%d :  Unsupported Async Event, flags"
         " = 0x%08x\n",
         mcc_compl->flags);
  } else if (mcc_compl->flags & CQE_FLAGS_COMPLETED_MASK) {
   be_mcc_compl_process_isr(&phba->ctrl, mcc_compl);
   atomic_dec(&phba->ctrl.mcc_obj.q.used);
  }

  mcc_compl->flags = 0;
  queue_tail_inc(mcc_cq);
  mcc_compl = queue_tail_node(mcc_cq);
  mcc_compl->flags = le32_to_cpu(mcc_compl->flags);
  num_processed++;
 }

 if (num_processed > 0)
  hwi_ring_cq_db(phba, mcc_cq->id, num_processed, 1, 0);

}
