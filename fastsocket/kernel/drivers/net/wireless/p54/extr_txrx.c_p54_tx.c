
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct p54_common {int tx_pending; } ;


 int p54_tx_pending (struct p54_common*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

void p54_tx(struct p54_common *priv, struct sk_buff *skb)
{
 skb_queue_tail(&priv->tx_pending, skb);
 p54_tx_pending(priv);
}
