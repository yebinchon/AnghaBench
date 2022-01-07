
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioc_mbox_mod_s {TYPE_1__* mbhdlr; } ;
struct bfa_ioc_s {struct bfa_ioc_mbox_mod_s mbox_mod; } ;
typedef int bfa_ioc_mbox_mcfunc_t ;
struct TYPE_2__ {int cbfn; } ;


 int BFI_MC_MAX ;

void
bfa_ioc_mbox_register(struct bfa_ioc_s *ioc, bfa_ioc_mbox_mcfunc_t *mcfuncs)
{
 struct bfa_ioc_mbox_mod_s *mod = &ioc->mbox_mod;
 int mc;

 for (mc = 0; mc < BFI_MC_MAX; mc++)
  mod->mbhdlr[mc].cbfn = mcfuncs[mc];
}
