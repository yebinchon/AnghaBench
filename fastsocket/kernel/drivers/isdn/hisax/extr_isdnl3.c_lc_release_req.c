
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* l3l2 ) (struct PStack*,int,int *) ;int l3m_timer; scalar_t__ debug; } ;
struct TYPE_3__ {int flag; } ;
struct PStack {TYPE_2__ l3; TYPE_1__ l2; } ;
struct FsmInst {struct PStack* userdata; } ;


 int DL_RELEASE ;
 int DREL_TIMER_VALUE ;
 int EV_TIMEOUT ;
 int FLG_L2BLOCK ;
 int FsmAddTimer (int *,int ,int ,int *,int) ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int REQUEST ;
 int ST_L3_LC_REL_WAIT ;
 int l3_debug (struct PStack*,char*) ;
 int stub1 (struct PStack*,int,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
lc_release_req(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;

 if (test_bit(FLG_L2BLOCK, &st->l2.flag)) {
  if (st->l3.debug)
   l3_debug(st, "lc_release_req: l2 blocked");

  FsmAddTimer(&st->l3.l3m_timer, DREL_TIMER_VALUE, EV_TIMEOUT, ((void*)0), 51);
 } else {
  FsmChangeState(fi, ST_L3_LC_REL_WAIT);
  st->l3.l3l2(st, DL_RELEASE | REQUEST, ((void*)0));
 }
}
