
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_trc_mod_s {int dummy; } ;
struct TYPE_3__ {int qe; } ;
struct bfa_phy_s {scalar_t__ dbuf_pa; int * dbuf_kva; struct bfa_ioc_s* ioc; TYPE_1__ ioc_notify; scalar_t__ op_busy; int * cbarg; int * cbfn; struct bfa_trc_mod_s* trcmod; } ;
struct bfa_ioc_s {int notify_q; } ;
typedef scalar_t__ bfa_boolean_t ;


 int BFI_MC_PHY ;
 int bfa_ioc_mbox_regisr (struct bfa_ioc_s*,int ,int ,struct bfa_phy_s*) ;
 int bfa_ioc_notify_init (TYPE_1__*,int ,struct bfa_phy_s*) ;
 int bfa_phy_intr ;
 int bfa_phy_notify ;
 int bfa_q_qe_init (TYPE_1__*) ;
 int list_add_tail (int *,int *) ;

void
bfa_phy_attach(struct bfa_phy_s *phy, struct bfa_ioc_s *ioc, void *dev,
  struct bfa_trc_mod_s *trcmod, bfa_boolean_t mincfg)
{
 phy->ioc = ioc;
 phy->trcmod = trcmod;
 phy->cbfn = ((void*)0);
 phy->cbarg = ((void*)0);
 phy->op_busy = 0;

 bfa_ioc_mbox_regisr(phy->ioc, BFI_MC_PHY, bfa_phy_intr, phy);
 bfa_q_qe_init(&phy->ioc_notify);
 bfa_ioc_notify_init(&phy->ioc_notify, bfa_phy_notify, phy);
 list_add_tail(&phy->ioc_notify.qe, &phy->ioc->notify_q);


 if (mincfg) {
  phy->dbuf_kva = ((void*)0);
  phy->dbuf_pa = 0;
 }
}
