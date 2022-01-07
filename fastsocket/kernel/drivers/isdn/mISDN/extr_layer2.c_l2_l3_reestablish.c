
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct layer2 {int flag; int i_queue; } ;
struct FsmInst {struct layer2* userdata; } ;


 int FLG_L3_INIT ;
 int dev_kfree_skb (struct sk_buff*) ;
 int establishlink (struct FsmInst*) ;
 int skb_queue_purge (int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
l2_l3_reestablish(struct FsmInst *fi, int event, void *arg)
{
 struct sk_buff *skb = arg;
 struct layer2 *l2 = fi->userdata;

 skb_queue_purge(&l2->i_queue);
 establishlink(fi);
 test_and_set_bit(FLG_L3_INIT, &l2->flag);
 dev_kfree_skb(skb);
}
