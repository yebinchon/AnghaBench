
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc_s {int iocpf; } ;


 int IOCPF_E_ENABLE ;
 int bfa_fsm_send_event (int *,int ) ;

__attribute__((used)) static void
bfa_ioc_sm_enabling_entry(struct bfa_ioc_s *ioc)
{
 bfa_fsm_send_event(&ioc->iocpf, IOCPF_E_ENABLE);
}
