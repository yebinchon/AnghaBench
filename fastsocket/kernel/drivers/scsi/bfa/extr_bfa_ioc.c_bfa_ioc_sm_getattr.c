
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioc_s {int iocpf; int bfa; TYPE_1__* cbfn; } ;
typedef enum ioc_event { ____Placeholder_ioc_event } ioc_event ;
struct TYPE_2__ {int (* enable_cbfn ) (int ,int ) ;} ;


 int BFA_STATUS_IOC_FAILURE ;
 int IOCPF_E_GETATTRFAIL ;






 int bfa_fsm_send_event (int *,int ) ;
 int bfa_fsm_set_state (struct bfa_ioc_s*,int ) ;
 int bfa_ioc_sm_disabling ;
 int bfa_ioc_sm_fail ;
 int bfa_ioc_sm_op ;
 int bfa_ioc_timer_stop (struct bfa_ioc_s*) ;
 int bfa_sm_fault (struct bfa_ioc_s*,int) ;
 int bfa_trc (struct bfa_ioc_s*,int) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
bfa_ioc_sm_getattr(struct bfa_ioc_s *ioc, enum ioc_event event)
{
 bfa_trc(ioc, event);

 switch (event) {
 case 131:
  bfa_ioc_timer_stop(ioc);
  bfa_fsm_set_state(ioc, bfa_ioc_sm_op);
  break;

 case 129:
 case 130:
  bfa_ioc_timer_stop(ioc);

 case 128:
  ioc->cbfn->enable_cbfn(ioc->bfa, BFA_STATUS_IOC_FAILURE);
  bfa_fsm_set_state(ioc, bfa_ioc_sm_fail);
  if (event != 129)
   bfa_fsm_send_event(&ioc->iocpf, IOCPF_E_GETATTRFAIL);
  break;

 case 133:
  bfa_ioc_timer_stop(ioc);
  bfa_fsm_set_state(ioc, bfa_ioc_sm_disabling);
  break;

 case 132:
  break;

 default:
  bfa_sm_fault(ioc, event);
 }
}
