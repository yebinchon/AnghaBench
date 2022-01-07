
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_ioceth {int dummy; } ;
typedef enum bfa_status { ____Placeholder_bfa_status } bfa_status ;


 int IOCETH_E_IOC_FAILED ;
 int IOCETH_E_IOC_READY ;
 int bfa_fsm_send_event (struct bna_ioceth*,int ) ;

__attribute__((used)) static void
bna_cb_ioceth_enable(void *arg, enum bfa_status error)
{
 struct bna_ioceth *ioceth = (struct bna_ioceth *)arg;

 if (error)
  bfa_fsm_send_event(ioceth, IOCETH_E_IOC_FAILED);
 else
  bfa_fsm_send_event(ioceth, IOCETH_E_IOC_READY);
}
