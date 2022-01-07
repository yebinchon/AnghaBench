
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int (* l2l1 ) (struct PStack*,int,int *) ;int flag; int i_queue; } ;
struct PStack {TYPE_1__ l2; } ;
struct FsmInst {struct PStack* userdata; } ;


 int FLG_L3_INIT ;
 int FLG_LAPB ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int PH_DEACTIVATE ;
 int REQUEST ;
 int ST_L2_4 ;
 scalar_t__ get_PollFlagFree (struct PStack*,struct sk_buff*) ;
 int skb_queue_purge (int *) ;
 int st5_dl_release_l2l3 (struct PStack*) ;
 int stop_t200 (struct PStack*,int) ;
 int stub1 (struct PStack*,int,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
l2_st5_dm_release(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;
 struct sk_buff *skb = arg;

 if (get_PollFlagFree(st, skb)) {
  stop_t200(st, 7);
   if (!test_bit(FLG_L3_INIT, &st->l2.flag))
   skb_queue_purge(&st->l2.i_queue);
  if (test_bit(FLG_LAPB, &st->l2.flag))
   st->l2.l2l1(st, PH_DEACTIVATE | REQUEST, ((void*)0));
  st5_dl_release_l2l3(st);
  FsmChangeState(fi, ST_L2_4);
 }
}
