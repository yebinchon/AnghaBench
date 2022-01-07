
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct layer1 {int dch; int (* dcb ) (int ,int ) ;int Flags; } ;
struct FsmInst {struct layer1* userdata; } ;


 int FLG_L1_ACTIVATED ;
 int FLG_L1_DBLOCKED ;
 int FLG_L1_DEACTTIMER ;
 int HW_DEACT_REQ ;
 int HW_D_NOBLOCKED ;
 int PH_DEACTIVATE_IND ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
l1_timer_deact(struct FsmInst *fi, int event, void *arg)
{
 struct layer1 *l1 = fi->userdata;

 test_and_clear_bit(FLG_L1_DEACTTIMER, &l1->Flags);
 test_and_clear_bit(FLG_L1_ACTIVATED, &l1->Flags);
 if (test_and_clear_bit(FLG_L1_DBLOCKED, &l1->Flags))
  l1->dcb(l1->dch, HW_D_NOBLOCKED);
 l1->dcb(l1->dch, PH_DEACTIVATE_IND);
 l1->dcb(l1->dch, HW_DEACT_REQ);
}
