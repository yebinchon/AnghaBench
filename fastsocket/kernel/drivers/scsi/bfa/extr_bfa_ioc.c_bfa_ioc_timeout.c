
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc_s {int dummy; } ;


 int IOC_E_TIMEOUT ;
 int bfa_fsm_send_event (struct bfa_ioc_s*,int ) ;
 int bfa_trc (struct bfa_ioc_s*,int ) ;

__attribute__((used)) static void
bfa_ioc_timeout(void *ioc_arg)
{
 struct bfa_ioc_s *ioc = (struct bfa_ioc_s *) ioc_arg;

 bfa_trc(ioc, 0);
 bfa_fsm_send_event(ioc, IOC_E_TIMEOUT);
}
