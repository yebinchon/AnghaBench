
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_iocpf {TYPE_2__* ioc; } ;
struct TYPE_4__ {int bfa; TYPE_1__* cbfn; int iocpf_timer; } ;
struct TYPE_3__ {int (* reset_cbfn ) (int ) ;} ;


 int BFA_IOC_TOV ;
 int bfa_ioc_send_enable (TYPE_2__*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void
bfa_iocpf_sm_enabling_entry(struct bfa_iocpf *iocpf)
{
 mod_timer(&(iocpf->ioc)->iocpf_timer, jiffies +
  msecs_to_jiffies(BFA_IOC_TOV));



 iocpf->ioc->cbfn->reset_cbfn(iocpf->ioc->bfa);
 bfa_ioc_send_enable(iocpf->ioc);
}
