
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_enet {int dummy; } ;


 int ENET_E_CHLD_STOPPED ;
 int bfa_fsm_send_event (struct bna_enet*,int ) ;

__attribute__((used)) static void
bna_enet_cb_chld_stopped(void *arg)
{
 struct bna_enet *enet = (struct bna_enet *)arg;

 bfa_fsm_send_event(enet, ENET_E_CHLD_STOPPED);
}
