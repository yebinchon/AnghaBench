
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct mISDNhead {void* id; } ;
struct layer2 {void* down_id; int flag; int down_queue; int l2m; } ;


 int EAGAIN ;
 int EV_L2_ACK_PULL ;
 int FLG_L1_NOTREADY ;
 void* MISDN_ID_NONE ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ l2down_skb (struct layer2*,struct sk_buff*) ;
 int mISDN_FsmEvent (int *,int ,int *) ;
 void* mISDN_HEAD_ID (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
ph_data_confirm(struct layer2 *l2, struct mISDNhead *hh, struct sk_buff *skb) {
 struct sk_buff *nskb = skb;
 int ret = -EAGAIN;

 if (test_bit(FLG_L1_NOTREADY, &l2->flag)) {
  if (hh->id == l2->down_id) {
   nskb = skb_dequeue(&l2->down_queue);
   if (nskb) {
    l2->down_id = mISDN_HEAD_ID(nskb);
    if (l2down_skb(l2, nskb)) {
     dev_kfree_skb(nskb);
     l2->down_id = MISDN_ID_NONE;
    }
   } else
    l2->down_id = MISDN_ID_NONE;
   if (ret) {
    dev_kfree_skb(skb);
    ret = 0;
   }
   if (l2->down_id == MISDN_ID_NONE) {
    test_and_clear_bit(FLG_L1_NOTREADY, &l2->flag);
    mISDN_FsmEvent(&l2->l2m, EV_L2_ACK_PULL, ((void*)0));
   }
  }
 }
 if (!test_and_set_bit(FLG_L1_NOTREADY, &l2->flag)) {
  nskb = skb_dequeue(&l2->down_queue);
  if (nskb) {
   l2->down_id = mISDN_HEAD_ID(nskb);
   if (l2down_skb(l2, nskb)) {
    dev_kfree_skb(nskb);
    l2->down_id = MISDN_ID_NONE;
    test_and_clear_bit(FLG_L1_NOTREADY, &l2->flag);
   }
  } else
   test_and_clear_bit(FLG_L1_NOTREADY, &l2->flag);
 }
 return ret;
}
