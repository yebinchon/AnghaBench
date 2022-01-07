
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {int tx_bytes; int tx_packets; } ;
struct emac_priv {TYPE_1__ net_dev_stats; int ndev; } ;


 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ netif_queue_stopped (int ) ;
 int netif_start_queue (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int emac_net_tx_complete(struct emac_priv *priv,
    void **net_data_tokens,
    int num_tokens, u32 ch)
{
 u32 cnt;

 if (unlikely(num_tokens && netif_queue_stopped(priv->ndev)))
  netif_start_queue(priv->ndev);
 for (cnt = 0; cnt < num_tokens; cnt++) {
  struct sk_buff *skb = (struct sk_buff *)net_data_tokens[cnt];
  if (skb == ((void*)0))
   continue;
  priv->net_dev_stats.tx_packets++;
  priv->net_dev_stats.tx_bytes += skb->len;
  dev_kfree_skb_any(skb);
 }
 return 0;
}
