
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct layer1 {int dch; int (* dcb ) (int ,int ) ;int Flags; int timer; } ;
struct FsmInst {struct layer1* userdata; } ;


 int EV_TIMER3 ;
 int FLG_L1_T3RUN ;
 int HW_RESET_REQ ;
 int TIMER3_VALUE ;
 int mISDN_FsmRestartTimer (int *,int ,int ,int *,int) ;
 int stub1 (int ,int ) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
l1_activate_s(struct FsmInst *fi, int event, void *arg)
{
 struct layer1 *l1 = fi->userdata;

 mISDN_FsmRestartTimer(&l1->timer, TIMER3_VALUE, EV_TIMER3, ((void*)0), 2);
 test_and_set_bit(FLG_L1_T3RUN, &l1->Flags);
 l1->dcb(l1->dch, HW_RESET_REQ);
}
