
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int flag; } ;
struct PStack {TYPE_1__ l2; } ;
struct FsmInst {struct PStack* userdata; } ;


 int FLG_L3_INIT ;
 int establishlink (struct FsmInst*) ;
 int get_PollFlagFree (struct PStack*,struct sk_buff*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
l2_reestablish(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;
 struct sk_buff *skb = arg;

 if (!get_PollFlagFree(st, skb)) {
  establishlink(fi);
  test_and_set_bit(FLG_L3_INIT, &st->l2.flag);
 }
}
