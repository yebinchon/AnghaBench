
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_iocpf {int ioc; } ;


 int bfa_ioc_mbox_flush (int ) ;
 int bfa_ioc_pf_disabled (int ) ;

__attribute__((used)) static void
bfa_iocpf_sm_disabled_entry(struct bfa_iocpf *iocpf)
{
 bfa_ioc_mbox_flush(iocpf->ioc);
 bfa_ioc_pf_disabled(iocpf->ioc);
}
