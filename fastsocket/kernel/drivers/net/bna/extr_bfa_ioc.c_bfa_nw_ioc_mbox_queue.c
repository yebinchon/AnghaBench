
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct bfa_mbox_cmd {int msg; int qe; void* cbarg; int cbfn; } ;
struct bfa_ioc_mbox_mod {int cmd_q; } ;
struct TYPE_2__ {int hfn_mbox_cmd; } ;
struct bfa_ioc {TYPE_1__ ioc_regs; struct bfa_ioc_mbox_mod mbox_mod; } ;
typedef int bfa_mbox_cmd_cbfn_t ;


 int bfa_ioc_mbox_send (struct bfa_ioc*,int ,int) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 scalar_t__ readl (int ) ;

bool
bfa_nw_ioc_mbox_queue(struct bfa_ioc *ioc, struct bfa_mbox_cmd *cmd,
   bfa_mbox_cmd_cbfn_t cbfn, void *cbarg)
{
 struct bfa_ioc_mbox_mod *mod = &ioc->mbox_mod;
 u32 stat;

 cmd->cbfn = cbfn;
 cmd->cbarg = cbarg;




 if (!list_empty(&mod->cmd_q)) {
  list_add_tail(&cmd->qe, &mod->cmd_q);
  return 1;
 }




 stat = readl(ioc->ioc_regs.hfn_mbox_cmd);
 if (stat) {
  list_add_tail(&cmd->qe, &mod->cmd_q);
  return 1;
 }




 bfa_ioc_mbox_send(ioc, cmd->msg, sizeof(cmd->msg));

 return 0;
}
