
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int auto_recover; } ;
struct bfa_ioc_s {TYPE_1__ iocpf; } ;
typedef enum ioc_event { ____Placeholder_ioc_event } ioc_event ;


 int IOCPF_E_FAIL ;





 int bfa_fsm_send_event (TYPE_1__*,int ) ;
 int bfa_fsm_set_state (struct bfa_ioc_s*,int ) ;
 int bfa_hb_timer_stop (struct bfa_ioc_s*) ;
 int bfa_ioc_fail_notify (struct bfa_ioc_s*) ;
 int bfa_ioc_sm_disabling ;
 int bfa_ioc_sm_fail ;
 int bfa_ioc_sm_fail_retry ;
 int bfa_sm_fault (struct bfa_ioc_s*,int) ;
 int bfa_trc (struct bfa_ioc_s*,int) ;

__attribute__((used)) static void
bfa_ioc_sm_op(struct bfa_ioc_s *ioc, enum ioc_event event)
{
 bfa_trc(ioc, event);

 switch (event) {
 case 131:
  break;

 case 132:
  bfa_hb_timer_stop(ioc);
  bfa_fsm_set_state(ioc, bfa_ioc_sm_disabling);
  break;

 case 128:
 case 129:
  bfa_hb_timer_stop(ioc);

 case 130:
  if (ioc->iocpf.auto_recover)
   bfa_fsm_set_state(ioc, bfa_ioc_sm_fail_retry);
  else
   bfa_fsm_set_state(ioc, bfa_ioc_sm_fail);

  bfa_ioc_fail_notify(ioc);

  if (event != 128)
   bfa_fsm_send_event(&ioc->iocpf, IOCPF_E_FAIL);
  break;

 default:
  bfa_sm_fault(ioc, event);
 }
}
