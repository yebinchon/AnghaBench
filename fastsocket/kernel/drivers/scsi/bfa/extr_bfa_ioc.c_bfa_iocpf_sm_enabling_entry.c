
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bfa_iocpf_s {TYPE_2__* ioc; } ;
struct TYPE_5__ {int bfa; TYPE_1__* cbfn; } ;
struct TYPE_4__ {int (* reset_cbfn ) (int ) ;} ;


 int bfa_ioc_send_enable (TYPE_2__*) ;
 int bfa_iocpf_timer_start (TYPE_2__*) ;
 int stub1 (int ) ;

__attribute__((used)) static void
bfa_iocpf_sm_enabling_entry(struct bfa_iocpf_s *iocpf)
{
 bfa_iocpf_timer_start(iocpf->ioc);



 iocpf->ioc->cbfn->reset_cbfn(iocpf->ioc->bfa);
 bfa_ioc_send_enable(iocpf->ioc);
}
