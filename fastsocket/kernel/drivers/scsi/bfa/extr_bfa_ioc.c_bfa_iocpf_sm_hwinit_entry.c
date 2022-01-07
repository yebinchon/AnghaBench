
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_iocpf_s {int ioc; scalar_t__ poll_time; } ;


 int BFA_FALSE ;
 int bfa_ioc_hwinit (int ,int ) ;

__attribute__((used)) static void
bfa_iocpf_sm_hwinit_entry(struct bfa_iocpf_s *iocpf)
{
 iocpf->poll_time = 0;
 bfa_ioc_hwinit(iocpf->ioc, BFA_FALSE);
}
