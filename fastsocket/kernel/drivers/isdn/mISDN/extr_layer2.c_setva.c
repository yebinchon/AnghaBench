
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct layer2 {unsigned int va; size_t sow; int window; int tmp_queue; int ** windowar; int flag; } ;


 int FLG_MOD128 ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_tail (int *,int *) ;
 int skb_trim (int *,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
setva(struct layer2 *l2, unsigned int nr)
{
 struct sk_buff *skb;

 while (l2->va != nr) {
  l2->va++;
  if (test_bit(FLG_MOD128, &l2->flag))
   l2->va %= 128;
  else
   l2->va %= 8;
  if (l2->windowar[l2->sow]) {
   skb_trim(l2->windowar[l2->sow], 0);
   skb_queue_tail(&l2->tmp_queue, l2->windowar[l2->sow]);
   l2->windowar[l2->sow] = ((void*)0);
  }
  l2->sow = (l2->sow + 1) % l2->window;
 }
 skb = skb_dequeue(&l2->tmp_queue);
 while (skb) {
  dev_kfree_skb(skb);
  skb = skb_dequeue(&l2->tmp_queue);
 }
}
