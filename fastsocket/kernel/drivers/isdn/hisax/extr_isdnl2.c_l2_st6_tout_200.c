
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rc; scalar_t__ N200; int T200; int t200; int flag; } ;
struct TYPE_3__ {int (* layer ) (struct PStack*,int,void*) ;} ;
struct PStack {TYPE_2__ l2; TYPE_1__ ma; } ;
struct FsmInst {struct PStack* userdata; } ;


 int CMD ;
 int CONFIRM ;
 int DISC ;
 int EV_L2_T200 ;
 int FLG_DCHAN_BUSY ;
 int FLG_LAPD ;
 int FLG_T200_RUN ;
 int FsmAddTimer (int *,int ,int ,int *,int) ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int INDICATION ;
 int MDL_ERROR ;
 int ST_L2_4 ;
 int lapb_dl_release_l2l3 (struct PStack*,int ) ;
 int send_uframe (struct PStack*,int,int ) ;
 int stub1 (struct PStack*,int,void*) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
l2_st6_tout_200(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;

 if (test_bit(FLG_LAPD, &st->l2.flag) &&
  test_bit(FLG_DCHAN_BUSY, &st->l2.flag)) {
  FsmAddTimer(&st->l2.t200, st->l2.T200, EV_L2_T200, ((void*)0), 9);
 } else if (st->l2.rc == st->l2.N200) {
  FsmChangeState(fi, ST_L2_4);
  test_and_clear_bit(FLG_T200_RUN, &st->l2.flag);
  st->ma.layer(st, MDL_ERROR | INDICATION, (void *) 'H');
  lapb_dl_release_l2l3(st, CONFIRM);
 } else {
  st->l2.rc++;
  FsmAddTimer(&st->l2.t200, st->l2.T200, EV_L2_T200,
       ((void*)0), 9);
  send_uframe(st, DISC | 0x10, CMD);
 }
}
