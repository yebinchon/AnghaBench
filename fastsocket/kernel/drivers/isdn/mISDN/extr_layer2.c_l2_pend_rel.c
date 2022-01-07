
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct layer2 {int flag; } ;
struct FsmInst {struct layer2* userdata; } ;


 int FLG_PEND_REL ;
 int dev_kfree_skb (struct sk_buff*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
l2_pend_rel(struct FsmInst *fi, int event, void *arg)
{
 struct sk_buff *skb = arg;
 struct layer2 *l2 = fi->userdata;

 test_and_set_bit(FLG_PEND_REL, &l2->flag);
 dev_kfree_skb(skb);
}
