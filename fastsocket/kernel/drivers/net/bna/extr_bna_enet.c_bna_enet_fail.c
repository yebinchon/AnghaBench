
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_enet {int flags; } ;


 int BNA_ENET_F_IOCETH_READY ;
 int ENET_E_FAIL ;
 int bfa_fsm_send_event (struct bna_enet*,int ) ;

__attribute__((used)) static void
bna_enet_fail(struct bna_enet *enet)
{
 enet->flags &= ~BNA_ENET_F_IOCETH_READY;
 bfa_fsm_send_event(enet, ENET_E_FAIL);
}
