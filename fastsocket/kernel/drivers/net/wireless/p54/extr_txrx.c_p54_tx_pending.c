
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct p54_common {int hw; int (* tx ) (int ,struct sk_buff*) ;int tx_pending; } ;


 int p54_assign_address (struct p54_common*,struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 int stub1 (int ,struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void p54_tx_pending(struct p54_common *priv)
{
 struct sk_buff *skb;
 int ret;

 skb = skb_dequeue(&priv->tx_pending);
 if (unlikely(!skb))
  return ;

 ret = p54_assign_address(priv, skb);
 if (unlikely(ret))
  skb_queue_head(&priv->tx_pending, skb);
 else
  priv->tx(priv->hw, skb);
}
