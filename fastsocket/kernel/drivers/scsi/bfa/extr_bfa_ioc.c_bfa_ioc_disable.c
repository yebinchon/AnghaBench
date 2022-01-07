
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc_s {int dummy; } ;


 int IOC_E_DISABLE ;
 int bfa_fsm_send_event (struct bfa_ioc_s*,int ) ;
 int bfa_ioc_stats (struct bfa_ioc_s*,int ) ;
 int ioc_disables ;

void
bfa_ioc_disable(struct bfa_ioc_s *ioc)
{
 bfa_ioc_stats(ioc, ioc_disables);
 bfa_fsm_send_event(ioc, IOC_E_DISABLE);
}
