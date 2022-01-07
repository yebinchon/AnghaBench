
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
 int dev_kfree_skb (struct sk_buff*) ;
 int get_PollFlag (struct PStack*,struct sk_buff*) ;
 int l2_mdl_error_ua (struct FsmInst*,int,void*) ;
 int lapb_dl_release_l2l3 (struct PStack*,int ) ;
 int stop_t200 (struct PStack*,int) ;

__attribute__((used)) static void
l2_released(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;
 struct sk_buff *skb = arg;

 if (!get_PollFlag(st, skb)) {
  l2_mdl_error_ua(fi, event, arg);
  return;
 }
 dev_kfree_skb(skb);

 stop_t200(st, 6);
 lapb_dl_release_l2l3(st, CONFIRM);
 FsmChangeState(fi, ST_L2_4);
}
