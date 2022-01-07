
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bna_ioceth {TYPE_1__* bna; } ;
typedef enum bna_ioceth_event { ____Placeholder_bna_ioceth_event } bna_ioceth_event ;
struct TYPE_2__ {int stats_mod; int enet; } ;




 int bfa_fsm_set_state (struct bna_ioceth*,int ) ;
 int bfa_sm_fault (int) ;
 int bna_enet_fail (int *) ;
 int bna_ioceth_sm_enet_stop_wait ;
 int bna_ioceth_sm_failed ;
 int bna_stats_mod_fail (int *) ;
 int disable_mbox_intr (struct bna_ioceth*) ;

__attribute__((used)) static void
bna_ioceth_sm_ready(struct bna_ioceth *ioceth, enum bna_ioceth_event event)
{
 switch (event) {
 case 129:
  bfa_fsm_set_state(ioceth, bna_ioceth_sm_enet_stop_wait);
  break;

 case 128:
  disable_mbox_intr(ioceth);
  bna_enet_fail(&ioceth->bna->enet);
  bna_stats_mod_fail(&ioceth->bna->stats_mod);
  bfa_fsm_set_state(ioceth, bna_ioceth_sm_failed);
  break;

 default:
  bfa_sm_fault(event);
 }
}
