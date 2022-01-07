
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_iocpf {int ioc; } ;


 int bfa_ioc_hw_sem_get (int ) ;
 int bfa_nw_ioc_debug_save_ftrc (int ) ;

__attribute__((used)) static void
bfa_iocpf_sm_initfail_sync_entry(struct bfa_iocpf *iocpf)
{
 bfa_nw_ioc_debug_save_ftrc(iocpf->ioc);
 bfa_ioc_hw_sem_get(iocpf->ioc);
}
