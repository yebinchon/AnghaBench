
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ data; } ;
struct TYPE_3__ {int tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
typedef int netdev_tx_t ;
struct TYPE_4__ {int (* xmit ) (struct sk_buff*,struct net_device*) ;} ;


 int ETH_ZLEN ;
 int GFP_ATOMIC ;
 int dev_kfree_skb (struct sk_buff*) ;
 TYPE_2__* dev_to_hdlc (struct net_device*) ;
 int memset (scalar_t__,int ,int) ;
 scalar_t__ pskb_expand_head (struct sk_buff*,int ,int,int ) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_tailroom (struct sk_buff*) ;
 int stub1 (struct sk_buff*,struct net_device*) ;

__attribute__((used)) static netdev_tx_t eth_tx(struct sk_buff *skb, struct net_device *dev)
{
 int pad = ETH_ZLEN - skb->len;
 if (pad > 0) {
  int len = skb->len;
  if (skb_tailroom(skb) < pad)
   if (pskb_expand_head(skb, 0, pad, GFP_ATOMIC)) {
    dev->stats.tx_dropped++;
    dev_kfree_skb(skb);
    return 0;
   }
  skb_put(skb, pad);
  memset(skb->data + len, 0, pad);
 }
 return dev_to_hdlc(dev)->xmit(skb, dev);
}
