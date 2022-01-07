
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bna_ioceth {int ioc; TYPE_1__* bna; } ;
typedef enum bna_ioceth_event { ____Placeholder_bna_ioceth_event } bna_ioceth_event ;
struct TYPE_2__ {int stats_mod; int enet; } ;




 int bfa_fsm_set_state (struct bna_ioceth*,int ) ;
 int bfa_nw_ioc_disable (int *) ;
 int bfa_sm_fault (int) ;
 int bna_enet_fail (int *) ;
 int bna_ioceth_sm_ioc_disable_wait ;
 int bna_stats_mod_fail (int *) ;
 int disable_mbox_intr (struct bna_ioceth*) ;

__attribute__((used)) static void
bna_ioceth_sm_enet_stop_wait(struct bna_ioceth *ioceth,
    enum bna_ioceth_event event)
{
 switch (event) {
 case 128:
  bfa_fsm_set_state(ioceth, bna_ioceth_sm_ioc_disable_wait);
  disable_mbox_intr(ioceth);
  bna_enet_fail(&ioceth->bna->enet);
  bna_stats_mod_fail(&ioceth->bna->stats_mod);
  bfa_nw_ioc_disable(&ioceth->ioc);
  break;

 case 129:
  bfa_fsm_set_state(ioceth, bna_ioceth_sm_ioc_disable_wait);
  bfa_nw_ioc_disable(&ioceth->ioc);
  break;

 default:
  bfa_sm_fault(event);
 }
}
