
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct layer2 {int i_queue; int flag; } ;
struct FsmInst {struct layer2* userdata; } ;


 int FLG_L3_INIT ;
 int dev_kfree_skb (struct sk_buff*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void
l2_feed_i_if_reest(struct FsmInst *fi, int event, void *arg)
{
 struct layer2 *l2 = fi->userdata;
 struct sk_buff *skb = arg;

 if (!test_bit(FLG_L3_INIT, &l2->flag))
  skb_queue_tail(&l2->i_queue, skb);
 else
  dev_kfree_skb(skb);
}
