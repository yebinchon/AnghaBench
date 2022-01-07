
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fsm; } ;
struct bfa_ioc {TYPE_1__ iocpf; int fsm; } ;
typedef enum bfa_iocpf_state { ____Placeholder_bfa_iocpf_state } bfa_iocpf_state ;
typedef enum bfa_ioc_state { ____Placeholder_bfa_ioc_state } bfa_ioc_state ;







 int BFA_IOC_ENABLING ;
 int BFA_IOC_FAIL ;
 int BFA_IOC_FWMISMATCH ;
 int BFA_IOC_HWINIT ;
 int BFA_IOC_INITFAIL ;
 int BFA_IOC_SEMWAIT ;
 int bfa_sm_to_state (int ,int ) ;
 int ioc_sm_table ;
 int iocpf_sm_table ;

__attribute__((used)) static enum bfa_ioc_state
bfa_ioc_get_state(struct bfa_ioc *ioc)
{
 enum bfa_iocpf_state iocpf_st;
 enum bfa_ioc_state ioc_st = bfa_sm_to_state(ioc_sm_table, ioc->fsm);

 if (ioc_st == BFA_IOC_ENABLING ||
  ioc_st == BFA_IOC_FAIL || ioc_st == BFA_IOC_INITFAIL) {

  iocpf_st = bfa_sm_to_state(iocpf_sm_table, ioc->iocpf.fsm);

  switch (iocpf_st) {
  case 128:
   ioc_st = BFA_IOC_SEMWAIT;
   break;

  case 130:
   ioc_st = BFA_IOC_HWINIT;
   break;

  case 131:
   ioc_st = BFA_IOC_FWMISMATCH;
   break;

  case 132:
   ioc_st = BFA_IOC_FAIL;
   break;

  case 129:
   ioc_st = BFA_IOC_INITFAIL;
   break;

  default:
   break;
  }
 }
 return ioc_st;
}
