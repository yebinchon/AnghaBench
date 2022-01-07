
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_desc; } ;
struct TYPE_3__ {int num_desc; } ;
struct spider_net_card {TYPE_2__ rx_chain; TYPE_1__ tx_chain; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int rx_pending; int rx_max_pending; int tx_pending; int tx_max_pending; } ;


 int SPIDER_NET_RX_DESCRIPTORS_MAX ;
 int SPIDER_NET_TX_DESCRIPTORS_MAX ;
 struct spider_net_card* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
spider_net_ethtool_get_ringparam(struct net_device *netdev,
     struct ethtool_ringparam *ering)
{
 struct spider_net_card *card = netdev_priv(netdev);

 ering->tx_max_pending = SPIDER_NET_TX_DESCRIPTORS_MAX;
 ering->tx_pending = card->tx_chain.num_desc;
 ering->rx_max_pending = SPIDER_NET_RX_DESCRIPTORS_MAX;
 ering->rx_pending = card->rx_chain.num_desc;
}
