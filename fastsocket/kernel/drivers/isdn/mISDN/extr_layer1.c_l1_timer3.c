
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; } ;
struct layer1 {int dch; int (* dcb ) (int ,int ) ;TYPE_1__ l1m; int Flags; } ;
struct FsmInst {struct layer1* userdata; } ;


 int FLG_L1_ACTIVATING ;
 int FLG_L1_DBLOCKED ;
 int FLG_L1_T3RUN ;
 int HW_D_NOBLOCKED ;
 int HW_POWERUP_REQ ;
 int PH_DEACTIVATE_IND ;
 int ST_L1_F3 ;
 scalar_t__ ST_L1_F6 ;
 int mISDN_FsmChangeState (struct FsmInst*,int ) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
l1_timer3(struct FsmInst *fi, int event, void *arg)
{
 struct layer1 *l1 = fi->userdata;

 test_and_clear_bit(FLG_L1_T3RUN, &l1->Flags);
 if (test_and_clear_bit(FLG_L1_ACTIVATING, &l1->Flags)) {
  if (test_and_clear_bit(FLG_L1_DBLOCKED, &l1->Flags))
   l1->dcb(l1->dch, HW_D_NOBLOCKED);
  l1->dcb(l1->dch, PH_DEACTIVATE_IND);
 }
 if (l1->l1m.state != ST_L1_F6) {
  mISDN_FsmChangeState(fi, ST_L1_F3);
  l1->dcb(l1->dch, HW_POWERUP_REQ);
 }
}
