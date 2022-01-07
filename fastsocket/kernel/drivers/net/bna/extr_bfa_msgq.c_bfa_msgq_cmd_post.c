
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bfa_msgq_cmd_entry {int qe; TYPE_1__* msg_hdr; } ;
struct TYPE_6__ {int pending_q; } ;
struct bfa_msgq {TYPE_2__ cmdq; } ;
struct TYPE_5__ {int num_entries; } ;


 scalar_t__ BFA_MSGQ_FREE_CNT (TYPE_2__*) ;
 int BFA_STATUS_OK ;
 int CMDQ_E_POST ;
 int __cmd_copy (TYPE_2__*,struct bfa_msgq_cmd_entry*) ;
 int bfa_fsm_send_event (TYPE_2__*,int ) ;
 int call_cmdq_ent_cbfn (struct bfa_msgq_cmd_entry*,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ ntohs (int ) ;

void
bfa_msgq_cmd_post(struct bfa_msgq *msgq, struct bfa_msgq_cmd_entry *cmd)
{
 if (ntohs(cmd->msg_hdr->num_entries) <=
  BFA_MSGQ_FREE_CNT(&msgq->cmdq)) {
  __cmd_copy(&msgq->cmdq, cmd);
  call_cmdq_ent_cbfn(cmd, BFA_STATUS_OK);
  bfa_fsm_send_event(&msgq->cmdq, CMDQ_E_POST);
 } else {
  list_add_tail(&cmd->qe, &msgq->cmdq.pending_q);
 }
}
