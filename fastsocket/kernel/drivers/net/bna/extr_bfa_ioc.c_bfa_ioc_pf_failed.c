
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc {int dummy; } ;


 int IOC_E_PFFAILED ;
 int bfa_fsm_send_event (struct bfa_ioc*,int ) ;

__attribute__((used)) static void
bfa_ioc_pf_failed(struct bfa_ioc *ioc)
{
 bfa_fsm_send_event(ioc, IOC_E_PFFAILED);
}
