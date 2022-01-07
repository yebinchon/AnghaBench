
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_enet {scalar_t__ fsm; int flags; } ;
typedef scalar_t__ bfa_sm_t ;


 int BNA_ENET_F_ENABLED ;
 int BNA_ENET_F_IOCETH_READY ;
 int ENET_E_START ;
 int bfa_fsm_send_event (struct bna_enet*,int ) ;
 scalar_t__ bna_enet_sm_stopped ;

void
bna_enet_enable(struct bna_enet *enet)
{
 if (enet->fsm != (bfa_sm_t)bna_enet_sm_stopped)
  return;

 enet->flags |= BNA_ENET_F_ENABLED;

 if (enet->flags & BNA_ENET_F_IOCETH_READY)
  bfa_fsm_send_event(enet, ENET_E_START);
}
