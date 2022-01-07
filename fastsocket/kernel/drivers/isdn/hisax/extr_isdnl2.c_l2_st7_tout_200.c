
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rc; int flag; int T200; int t200; } ;
struct PStack {TYPE_1__ l2; } ;
struct FsmInst {struct PStack* userdata; } ;


 int EV_L2_T200 ;
 int FLG_DCHAN_BUSY ;
 int FLG_LAPD ;
 int FLG_T200_RUN ;
 int FsmAddTimer (int *,int ,int ,int *,int) ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int ST_L2_8 ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int transmit_enquiry (struct PStack*) ;

__attribute__((used)) static void
l2_st7_tout_200(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;

 if (test_bit(FLG_LAPD, &st->l2.flag) &&
  test_bit(FLG_DCHAN_BUSY, &st->l2.flag)) {
  FsmAddTimer(&st->l2.t200, st->l2.T200, EV_L2_T200, ((void*)0), 9);
  return;
 }
 test_and_clear_bit(FLG_T200_RUN, &st->l2.flag);
 st->l2.rc = 0;
 FsmChangeState(fi, ST_L2_8);

 transmit_enquiry(st);
 st->l2.rc++;
}
