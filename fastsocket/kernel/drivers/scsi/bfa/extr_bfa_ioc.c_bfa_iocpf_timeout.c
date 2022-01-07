
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc_s {int iocpf; } ;


 int IOCPF_E_TIMEOUT ;
 int bfa_fsm_send_event (int *,int ) ;
 int bfa_trc (struct bfa_ioc_s*,int ) ;

__attribute__((used)) static void
bfa_iocpf_timeout(void *ioc_arg)
{
 struct bfa_ioc_s *ioc = (struct bfa_ioc_s *) ioc_arg;

 bfa_trc(ioc, 0);
 bfa_fsm_send_event(&ioc->iocpf, IOCPF_E_TIMEOUT);
}
