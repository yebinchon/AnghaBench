
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct bfa_mbox_cmd {int (* cbfn ) (void*) ;void* cbarg; int msg; } ;
struct bfa_ioc_mbox_mod {int cmd_q; } ;
struct TYPE_2__ {int hfn_mbox_cmd; } ;
struct bfa_ioc {TYPE_1__ ioc_regs; struct bfa_ioc_mbox_mod mbox_mod; } ;
typedef int (* bfa_mbox_cmd_cbfn_t ) (void*) ;


 int bfa_ioc_mbox_send (struct bfa_ioc*,int ,int) ;
 int bfa_q_deq (int *,struct bfa_mbox_cmd**) ;
 scalar_t__ list_empty (int *) ;
 scalar_t__ readl (int ) ;

__attribute__((used)) static void
bfa_ioc_mbox_poll(struct bfa_ioc *ioc)
{
 struct bfa_ioc_mbox_mod *mod = &ioc->mbox_mod;
 struct bfa_mbox_cmd *cmd;
 bfa_mbox_cmd_cbfn_t cbfn;
 void *cbarg;
 u32 stat;




 if (list_empty(&mod->cmd_q))
  return;




 stat = readl(ioc->ioc_regs.hfn_mbox_cmd);
 if (stat)
  return;




 bfa_q_deq(&mod->cmd_q, &cmd);
 bfa_ioc_mbox_send(ioc, cmd->msg, sizeof(cmd->msg));




 if (cmd->cbfn) {
  cbfn = cmd->cbfn;
  cbarg = cmd->cbarg;
  cmd->cbfn = ((void*)0);
  cbfn(cbarg);
 }
}
