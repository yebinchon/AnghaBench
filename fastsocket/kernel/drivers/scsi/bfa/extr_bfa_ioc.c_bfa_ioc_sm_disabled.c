
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioc_s {int iocpf; int bfa; TYPE_1__* cbfn; } ;
typedef enum ioc_event { ____Placeholder_ioc_event } ioc_event ;
struct TYPE_2__ {int (* disable_cbfn ) (int ) ;} ;


 int IOCPF_E_STOP ;



 int bfa_fsm_send_event (int *,int ) ;
 int bfa_fsm_set_state (struct bfa_ioc_s*,int ) ;
 int bfa_ioc_sm_enabling ;
 int bfa_ioc_sm_uninit ;
 int bfa_sm_fault (struct bfa_ioc_s*,int) ;
 int bfa_trc (struct bfa_ioc_s*,int) ;
 int stub1 (int ) ;

__attribute__((used)) static void
bfa_ioc_sm_disabled(struct bfa_ioc_s *ioc, enum ioc_event event)
{
 bfa_trc(ioc, event);

 switch (event) {
 case 128:
  bfa_fsm_set_state(ioc, bfa_ioc_sm_enabling);
  break;

 case 129:
  ioc->cbfn->disable_cbfn(ioc->bfa);
  break;

 case 130:
  bfa_fsm_set_state(ioc, bfa_ioc_sm_uninit);
  bfa_fsm_send_event(&ioc->iocpf, IOCPF_E_STOP);
  break;

 default:
  bfa_sm_fault(ioc, event);
 }
}
