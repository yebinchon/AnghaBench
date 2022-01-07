
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_ioceth {int dummy; } ;


 int IOCETH_E_ENET_STOPPED ;
 int bfa_fsm_send_event (struct bna_ioceth*,int ) ;

__attribute__((used)) static void
bna_ioceth_cb_enet_stopped(void *arg)
{
 struct bna_ioceth *ioceth = (struct bna_ioceth *)arg;

 bfa_fsm_send_event(ioceth, IOCETH_E_ENET_STOPPED);
}
