
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int protocol; int len; scalar_t__ data; } ;
struct TYPE_2__ {int rx_packets; int rx_bytes; } ;
struct emac_priv {TYPE_1__ net_dev_stats; int ndev; } ;
struct emac_netpktobj {int pkt_length; scalar_t__ pkt_token; } ;


 int EMAC_CACHE_INVALIDATE (unsigned long,int ) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 int netif_receive_skb (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int ) ;

__attribute__((used)) static int emac_net_rx_cb(struct emac_priv *priv,
     struct emac_netpktobj *net_pkt_list)
{
 struct sk_buff *p_skb;
 p_skb = (struct sk_buff *)net_pkt_list->pkt_token;

 skb_put(p_skb, net_pkt_list->pkt_length);
 EMAC_CACHE_INVALIDATE((unsigned long)p_skb->data, p_skb->len);
 p_skb->protocol = eth_type_trans(p_skb, priv->ndev);
 netif_receive_skb(p_skb);
 priv->net_dev_stats.rx_bytes += net_pkt_list->pkt_length;
 priv->net_dev_stats.rx_packets++;
 return 0;
}
