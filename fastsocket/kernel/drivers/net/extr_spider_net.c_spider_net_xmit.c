
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spider_net_card {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;


 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 struct spider_net_card* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int spider_net_kick_tx_dma (struct spider_net_card*) ;
 scalar_t__ spider_net_prepare_tx_descr (struct spider_net_card*,struct sk_buff*) ;
 int spider_net_release_tx_chain (struct spider_net_card*,int ) ;
 int spider_net_set_low_watermark (struct spider_net_card*) ;

__attribute__((used)) static int
spider_net_xmit(struct sk_buff *skb, struct net_device *netdev)
{
 int cnt;
 struct spider_net_card *card = netdev_priv(netdev);

 spider_net_release_tx_chain(card, 0);

 if (spider_net_prepare_tx_descr(card, skb) != 0) {
  netdev->stats.tx_dropped++;
  netif_stop_queue(netdev);
  return NETDEV_TX_BUSY;
 }

 cnt = spider_net_set_low_watermark(card);
 if (cnt < 5)
  spider_net_kick_tx_dma(card);
 return NETDEV_TX_OK;
}
