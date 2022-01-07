
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_ioceth {int ioc; } ;
typedef enum bna_ioceth_event { ____Placeholder_bna_ioceth_event } bna_ioceth_event ;






 int bfa_fsm_set_state (struct bna_ioceth*,void (*) (struct bna_ioceth*,int)) ;
 int bfa_nw_ioc_enable (int *) ;
 int bfa_sm_fault (int) ;
 void bna_ioceth_sm_failed (struct bna_ioceth*,int) ;
 void bna_ioceth_sm_ioc_ready_wait (struct bna_ioceth*,int) ;
 int disable_mbox_intr (struct bna_ioceth*) ;
 int enable_mbox_intr (struct bna_ioceth*) ;

__attribute__((used)) static void
bna_ioceth_sm_stopped(struct bna_ioceth *ioceth,
   enum bna_ioceth_event event)
{
 switch (event) {
 case 130:
  bfa_fsm_set_state(ioceth, bna_ioceth_sm_ioc_ready_wait);
  bfa_nw_ioc_enable(&ioceth->ioc);
  break;

 case 131:
  bfa_fsm_set_state(ioceth, bna_ioceth_sm_stopped);
  break;

 case 128:
  enable_mbox_intr(ioceth);
  break;

 case 129:
  disable_mbox_intr(ioceth);
  bfa_fsm_set_state(ioceth, bna_ioceth_sm_failed);
  break;

 default:
  bfa_sm_fault(event);
 }
}
