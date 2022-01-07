
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioc {int bfa; TYPE_1__* cbfn; } ;
struct TYPE_2__ {int (* hbfail_cbfn ) (int ) ;} ;


 int BFA_IOC_E_FAILED ;
 int bfa_ioc_event_notify (struct bfa_ioc*,int ) ;
 int bfa_nw_ioc_debug_save_ftrc (struct bfa_ioc*) ;
 int stub1 (int ) ;

__attribute__((used)) static void
bfa_ioc_fail_notify(struct bfa_ioc *ioc)
{



 ioc->cbfn->hbfail_cbfn(ioc->bfa);
 bfa_ioc_event_notify(ioc, BFA_IOC_E_FAILED);
 bfa_nw_ioc_debug_save_ftrc(ioc);
}
