
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioc_cbfn {int dummy; } ;
struct TYPE_2__ {struct bfa_ioc* ioc; } ;
struct bfa_ioc {int fcmode; int pllinit; int dbg_fwsave_once; int notify_q; TYPE_1__ iocpf; struct bfa_ioc_cbfn* cbfn; void* bfa; } ;


 int INIT_LIST_HEAD (int *) ;
 int IOC_E_RESET ;
 int bfa_fsm_send_event (struct bfa_ioc*,int ) ;
 int bfa_fsm_set_state (struct bfa_ioc*,int ) ;
 int bfa_ioc_mbox_attach (struct bfa_ioc*) ;
 int bfa_ioc_sm_uninit ;

void
bfa_nw_ioc_attach(struct bfa_ioc *ioc, void *bfa, struct bfa_ioc_cbfn *cbfn)
{
 ioc->bfa = bfa;
 ioc->cbfn = cbfn;
 ioc->fcmode = 0;
 ioc->pllinit = 0;
 ioc->dbg_fwsave_once = 1;
 ioc->iocpf.ioc = ioc;

 bfa_ioc_mbox_attach(ioc);
 INIT_LIST_HEAD(&ioc->notify_q);

 bfa_fsm_set_state(ioc, bfa_ioc_sm_uninit);
 bfa_fsm_send_event(ioc, IOC_E_RESET);
}
