
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct PStack {int dummy; } ;
struct FsmInst {struct PStack* userdata; } ;


 int CONFIRM ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int ST_L2_4 ;
 scalar_t__ get_PollFlagFree (struct PStack*,struct sk_buff*) ;
 int lapb_dl_release_l2l3 (struct PStack*,int ) ;
 int stop_t200 (struct PStack*,int) ;

__attribute__((used)) static void
l2_st6_dm_release(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;
 struct sk_buff *skb = arg;

 if (get_PollFlagFree(st, skb)) {
  stop_t200(st, 8);
  lapb_dl_release_l2l3(st, CONFIRM);
  FsmChangeState(fi, ST_L2_4);
 }
}
