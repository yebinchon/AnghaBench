
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct layer2 {int i_queue; } ;
struct FsmInst {struct layer2* userdata; } ;


 int EV_L2_ACK_PULL ;
 int mISDN_FsmEvent (struct FsmInst*,int ,int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static void
l2_feed_i_pull(struct FsmInst *fi, int event, void *arg)
{
 struct layer2 *l2 = fi->userdata;
 struct sk_buff *skb = arg;

 skb_queue_tail(&l2->i_queue, skb);
 mISDN_FsmEvent(fi, EV_L2_ACK_PULL, ((void*)0));
}
