
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct layer1 {int dch; int (* dcb ) (int ,int ) ;int Flags; } ;
struct FsmInst {struct layer1* userdata; } ;


 int FLG_L1_ACTIVATING ;
 int INFO3_P8 ;
 int ST_L1_F3 ;
 int ST_L1_F4 ;
 int mISDN_FsmChangeState (struct FsmInst*,int ) ;
 int stub1 (int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
l1_power_up_s(struct FsmInst *fi, int event, void *arg)
{
 struct layer1 *l1 = fi->userdata;

 if (test_bit(FLG_L1_ACTIVATING, &l1->Flags)) {
  mISDN_FsmChangeState(fi, ST_L1_F4);
  l1->dcb(l1->dch, INFO3_P8);
 } else
  mISDN_FsmChangeState(fi, ST_L1_F3);
}
