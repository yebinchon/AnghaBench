
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_msgq_cmdq {int pending_q; scalar_t__ bytes_to_copy; scalar_t__ offset; scalar_t__ token; scalar_t__ flags; scalar_t__ consumer_index; scalar_t__ producer_index; } ;
struct bfa_msgq_cmd_entry {int qe; } ;


 int BFA_STATUS_FAILED ;
 int bfa_q_deq (int *,struct bfa_msgq_cmd_entry**) ;
 int bfa_q_qe_init (int *) ;
 int call_cmdq_ent_cbfn (struct bfa_msgq_cmd_entry*,int ) ;
 int list_empty (int *) ;

__attribute__((used)) static void
cmdq_sm_stopped_entry(struct bfa_msgq_cmdq *cmdq)
{
 struct bfa_msgq_cmd_entry *cmdq_ent;

 cmdq->producer_index = 0;
 cmdq->consumer_index = 0;
 cmdq->flags = 0;
 cmdq->token = 0;
 cmdq->offset = 0;
 cmdq->bytes_to_copy = 0;
 while (!list_empty(&cmdq->pending_q)) {
  bfa_q_deq(&cmdq->pending_q, &cmdq_ent);
  bfa_q_qe_init(&cmdq_ent->qe);
  call_cmdq_ent_cbfn(cmdq_ent, BFA_STATUS_FAILED);
 }
}
