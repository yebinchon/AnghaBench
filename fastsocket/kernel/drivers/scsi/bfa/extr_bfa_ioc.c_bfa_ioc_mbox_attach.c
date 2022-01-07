
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioc_mbox_mod_s {TYPE_1__* mbhdlr; int cmd_q; } ;
struct bfa_ioc_s {int bfa; struct bfa_ioc_mbox_mod_s mbox_mod; } ;
struct TYPE_2__ {int cbarg; int * cbfn; } ;


 int BFI_MC_MAX ;
 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static void
bfa_ioc_mbox_attach(struct bfa_ioc_s *ioc)
{
 struct bfa_ioc_mbox_mod_s *mod = &ioc->mbox_mod;
 int mc;

 INIT_LIST_HEAD(&mod->cmd_q);
 for (mc = 0; mc < BFI_MC_MAX; mc++) {
  mod->mbhdlr[mc].cbfn = ((void*)0);
  mod->mbhdlr[mc].cbarg = ioc->bfa;
 }
}
