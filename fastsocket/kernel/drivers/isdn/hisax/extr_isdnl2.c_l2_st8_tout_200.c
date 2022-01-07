
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rc; scalar_t__ N200; int flag; int T200; int t200; } ;
struct TYPE_3__ {int (* layer ) (struct PStack*,int,void*) ;} ;
struct PStack {TYPE_2__ l2; TYPE_1__ ma; } ;
struct FsmInst {struct PStack* userdata; } ;


 int EV_L2_T200 ;
 int FLG_DCHAN_BUSY ;
 int FLG_L3_INIT ;
 int FLG_LAPD ;
 int FLG_T200_RUN ;
 int FsmAddTimer (int *,int ,int ,int *,int) ;
 int INDICATION ;
 int MDL_ERROR ;
 int establishlink (struct FsmInst*) ;
 int stub1 (struct PStack*,int,void*) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int transmit_enquiry (struct PStack*) ;

__attribute__((used)) static void
l2_st8_tout_200(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;

 if (test_bit(FLG_LAPD, &st->l2.flag) &&
  test_bit(FLG_DCHAN_BUSY, &st->l2.flag)) {
  FsmAddTimer(&st->l2.t200, st->l2.T200, EV_L2_T200, ((void*)0), 9);
  return;
 }
 test_and_clear_bit(FLG_T200_RUN, &st->l2.flag);
 if (st->l2.rc == st->l2.N200) {
  st->ma.layer(st, MDL_ERROR | INDICATION, (void *) 'I');
  establishlink(fi);
  test_and_clear_bit(FLG_L3_INIT, &st->l2.flag);
 } else {
  transmit_enquiry(st);
  st->l2.rc++;
 }
}
