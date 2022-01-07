
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int maxpacket; } ;
struct sk_buff {int len; int* data; } ;
typedef int gfp_t ;


 scalar_t__ DM_TX_OVERHEAD ;
 int __skb_push (struct sk_buff*,scalar_t__) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 struct sk_buff* skb_copy_expand (struct sk_buff*,scalar_t__,int ,int ) ;
 scalar_t__ skb_headroom (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *dm9601_tx_fixup(struct usbnet *dev, struct sk_buff *skb,
           gfp_t flags)
{
 int len;







 len = skb->len;

 if (skb_headroom(skb) < DM_TX_OVERHEAD) {
  struct sk_buff *skb2;

  skb2 = skb_copy_expand(skb, DM_TX_OVERHEAD, 0, flags);
  dev_kfree_skb_any(skb);
  skb = skb2;
  if (!skb)
   return ((void*)0);
 }

 __skb_push(skb, DM_TX_OVERHEAD);



 if ((skb->len % dev->maxpacket) == 0)
  len++;

 skb->data[0] = len;
 skb->data[1] = len >> 8;

 return skb;
}
