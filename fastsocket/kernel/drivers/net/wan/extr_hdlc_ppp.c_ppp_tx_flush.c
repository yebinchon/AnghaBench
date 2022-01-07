
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int dev_queue_xmit (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int tx_queue ;

__attribute__((used)) static void ppp_tx_flush(void)
{
 struct sk_buff *skb;
 while ((skb = skb_dequeue(&tx_queue)) != ((void*)0))
  dev_queue_xmit(skb);
}
