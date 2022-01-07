
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_ioceth {int dummy; } ;
typedef enum bna_ioceth_event { ____Placeholder_bna_ioceth_event } bna_ioceth_event ;




 int bfa_fsm_set_state (struct bna_ioceth*,int ) ;
 int bfa_sm_fault (int) ;
 int bna_ioceth_sm_stopped ;
 int disable_mbox_intr (struct bna_ioceth*) ;

__attribute__((used)) static void
bna_ioceth_sm_ioc_disable_wait(struct bna_ioceth *ioceth,
    enum bna_ioceth_event event)
{
 switch (event) {
 case 128:
  disable_mbox_intr(ioceth);
  bfa_fsm_set_state(ioceth, bna_ioceth_sm_stopped);
  break;

 case 129:


  break;

 default:
  bfa_sm_fault(event);
 }
}
