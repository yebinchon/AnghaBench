
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioc_s {int bfa; TYPE_1__* cbfn; } ;
struct TYPE_2__ {int (* disable_cbfn ) (int ) ;} ;


 int BFA_IOC_E_DISABLED ;
 int bfa_ioc_event_notify (struct bfa_ioc_s*,int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void
bfa_ioc_disable_comp(struct bfa_ioc_s *ioc)
{
 ioc->cbfn->disable_cbfn(ioc->bfa);
 bfa_ioc_event_notify(ioc, BFA_IOC_E_DISABLED);
}
