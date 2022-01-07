
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ll_struct {int hcill_state; int txq; int tx_wait_q; } ;


 int HCILL_AWAKE ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static void __ll_do_awake(struct ll_struct *ll)
{
 struct sk_buff *skb = ((void*)0);

 while ((skb = skb_dequeue(&ll->tx_wait_q)))
  skb_queue_tail(&ll->txq, skb);

 ll->hcill_state = HCILL_AWAKE;
}
