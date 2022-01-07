
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_mbox_cmd {int dummy; } ;
struct bfa_ioc_mbox_mod {int cmd_q; } ;
struct bfa_ioc {struct bfa_ioc_mbox_mod mbox_mod; } ;


 int bfa_q_deq (int *,struct bfa_mbox_cmd**) ;
 int list_empty (int *) ;

__attribute__((used)) static void
bfa_ioc_mbox_flush(struct bfa_ioc *ioc)
{
 struct bfa_ioc_mbox_mod *mod = &ioc->mbox_mod;
 struct bfa_mbox_cmd *cmd;

 while (!list_empty(&mod->cmd_q))
  bfa_q_deq(&mod->cmd_q, &cmd);
}
