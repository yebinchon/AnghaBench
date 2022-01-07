
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_trc_mod_s {int dummy; } ;
struct bfa_ioc_s {int notify_q; } ;
struct TYPE_3__ {int qe; } ;
struct bfa_fru_s {scalar_t__ dbuf_pa; int * dbuf_kva; struct bfa_ioc_s* ioc; TYPE_1__ ioc_notify; scalar_t__ op_busy; int * cbarg; int * cbfn; struct bfa_trc_mod_s* trcmod; } ;
typedef scalar_t__ bfa_boolean_t ;


 int BFI_MC_FRU ;
 int bfa_fru_intr ;
 int bfa_fru_notify ;
 int bfa_ioc_mbox_regisr (struct bfa_ioc_s*,int ,int ,struct bfa_fru_s*) ;
 int bfa_ioc_notify_init (TYPE_1__*,int ,struct bfa_fru_s*) ;
 int bfa_q_qe_init (TYPE_1__*) ;
 int list_add_tail (int *,int *) ;

void
bfa_fru_attach(struct bfa_fru_s *fru, struct bfa_ioc_s *ioc, void *dev,
 struct bfa_trc_mod_s *trcmod, bfa_boolean_t mincfg)
{
 fru->ioc = ioc;
 fru->trcmod = trcmod;
 fru->cbfn = ((void*)0);
 fru->cbarg = ((void*)0);
 fru->op_busy = 0;

 bfa_ioc_mbox_regisr(fru->ioc, BFI_MC_FRU, bfa_fru_intr, fru);
 bfa_q_qe_init(&fru->ioc_notify);
 bfa_ioc_notify_init(&fru->ioc_notify, bfa_fru_notify, fru);
 list_add_tail(&fru->ioc_notify.qe, &fru->ioc->notify_q);


 if (mincfg) {
  fru->dbuf_kva = ((void*)0);
  fru->dbuf_pa = 0;
 }
}
