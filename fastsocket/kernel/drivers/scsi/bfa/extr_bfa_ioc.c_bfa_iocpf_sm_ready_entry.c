
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_iocpf_s {int ioc; } ;


 int IOC_E_ENABLED ;
 int bfa_fsm_send_event (int ,int ) ;

__attribute__((used)) static void
bfa_iocpf_sm_ready_entry(struct bfa_iocpf_s *iocpf)
{
 bfa_fsm_send_event(iocpf->ioc, IOC_E_ENABLED);
}
