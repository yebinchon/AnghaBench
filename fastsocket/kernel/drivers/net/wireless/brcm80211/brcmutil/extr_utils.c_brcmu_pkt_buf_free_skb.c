
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ destructor; int next; } ;


 int WARN_ON (int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;

void brcmu_pkt_buf_free_skb(struct sk_buff *skb)
{
 if (!skb)
  return;
 WARN_ON(skb->next);
 if (skb->destructor)



  dev_kfree_skb_any(skb);
 else



  dev_kfree_skb(skb);
}
