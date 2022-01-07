
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc_s {int dbg_fwsave_once; } ;


 int BFA_TRUE ;
 int IOC_E_HWERROR ;
 int bfa_fsm_send_event (struct bfa_ioc_s*,int ) ;

void
bfa_ioc_suspend(struct bfa_ioc_s *ioc)
{
 ioc->dbg_fwsave_once = BFA_TRUE;
 bfa_fsm_send_event(ioc, IOC_E_HWERROR);
}
