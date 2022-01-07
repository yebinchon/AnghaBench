
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct bfa_mbox_cmd_s {int msg; int qe; } ;
struct TYPE_2__ {int hfn_mbox_cmd; } ;
struct bfa_ioc_mbox_mod_s {int cmd_q; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; struct bfa_ioc_mbox_mod_s mbox_mod; } ;


 int bfa_ioc_mbox_send (struct bfa_ioc_s*,int ,int) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 scalar_t__ readl (int ) ;

void
bfa_ioc_mbox_queue(struct bfa_ioc_s *ioc, struct bfa_mbox_cmd_s *cmd)
{
 struct bfa_ioc_mbox_mod_s *mod = &ioc->mbox_mod;
 u32 stat;




 if (!list_empty(&mod->cmd_q)) {
  list_add_tail(&cmd->qe, &mod->cmd_q);
  return;
 }




 stat = readl(ioc->ioc_regs.hfn_mbox_cmd);
 if (stat) {
  list_add_tail(&cmd->qe, &mod->cmd_q);
  return;
 }




 bfa_ioc_mbox_send(ioc, cmd->msg, sizeof(cmd->msg));
}
