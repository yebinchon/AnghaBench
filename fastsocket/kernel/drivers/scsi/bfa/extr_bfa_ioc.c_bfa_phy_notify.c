
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_phy_s {int op_busy; int status; int cbarg; int (* cbfn ) (int ,int ) ;} ;
typedef enum bfa_ioc_event_e { ____Placeholder_bfa_ioc_event_e } bfa_ioc_event_e ;




 int BFA_STATUS_IOC_FAILURE ;
 int bfa_trc (struct bfa_phy_s*,int) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
bfa_phy_notify(void *cbarg, enum bfa_ioc_event_e event)
{
 struct bfa_phy_s *phy = cbarg;

 bfa_trc(phy, event);

 switch (event) {
 case 129:
 case 128:
  if (phy->op_busy) {
   phy->status = BFA_STATUS_IOC_FAILURE;
   phy->cbfn(phy->cbarg, phy->status);
   phy->op_busy = 0;
  }
  break;

 default:
  break;
 }
}
