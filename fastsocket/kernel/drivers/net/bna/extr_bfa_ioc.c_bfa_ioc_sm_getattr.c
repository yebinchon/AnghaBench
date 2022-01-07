
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioc {int ioc_timer; int bfa; TYPE_1__* cbfn; } ;
typedef enum ioc_event { ____Placeholder_ioc_event } ioc_event ;
struct TYPE_2__ {int (* enable_cbfn ) (int ,int ) ;} ;


 int BFA_STATUS_IOC_FAILURE ;






 int bfa_fsm_set_state (struct bfa_ioc*,int ) ;
 int bfa_ioc_sm_disabling ;
 int bfa_ioc_sm_fail ;
 int bfa_ioc_sm_op ;
 int bfa_iocpf_getattrfail (struct bfa_ioc*) ;
 int bfa_sm_fault (int) ;
 int del_timer (int *) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
bfa_ioc_sm_getattr(struct bfa_ioc *ioc, enum ioc_event event)
{
 switch (event) {
 case 131:
  del_timer(&ioc->ioc_timer);
  bfa_fsm_set_state(ioc, bfa_ioc_sm_op);
  break;

 case 129:
 case 130:
  del_timer(&ioc->ioc_timer);

 case 128:
  ioc->cbfn->enable_cbfn(ioc->bfa, BFA_STATUS_IOC_FAILURE);
  bfa_fsm_set_state(ioc, bfa_ioc_sm_fail);
  if (event != 129)
   bfa_iocpf_getattrfail(ioc);
  break;

 case 133:
  del_timer(&ioc->ioc_timer);
  bfa_fsm_set_state(ioc, bfa_ioc_sm_disabling);
  break;

 case 132:
  break;

 default:
  bfa_sm_fault(event);
 }
}
