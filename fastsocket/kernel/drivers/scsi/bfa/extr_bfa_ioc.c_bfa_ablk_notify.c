
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ablk_s {int busy; int (* cbfn ) (int ,int ) ;int cbarg; int * pcifn; int ioc; } ;
typedef enum bfa_ioc_event_e { ____Placeholder_bfa_ioc_event_e } bfa_ioc_event_e ;


 int BFA_FALSE ;



 int BFA_STATUS_FAILED ;
 int WARN_ON (int) ;
 int bfa_trc (int ,int) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
bfa_ablk_notify(void *cbarg, enum bfa_ioc_event_e event)
{
 struct bfa_ablk_s *ablk = (struct bfa_ablk_s *)cbarg;

 bfa_trc(ablk->ioc, event);

 switch (event) {
 case 129:
  WARN_ON(ablk->busy != BFA_FALSE);
  break;

 case 130:
 case 128:

  ablk->pcifn = ((void*)0);
  if (ablk->busy) {
   if (ablk->cbfn)
    ablk->cbfn(ablk->cbarg, BFA_STATUS_FAILED);
   ablk->cbfn = ((void*)0);
   ablk->busy = BFA_FALSE;
  }
  break;

 default:
  WARN_ON(1);
  break;
 }
}
