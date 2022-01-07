
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int rx_csum; } ;
struct spider_net_card {TYPE_1__ options; } ;
struct net_device {int dummy; } ;


 struct spider_net_card* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32
spider_net_ethtool_get_rx_csum(struct net_device *netdev)
{
 struct spider_net_card *card = netdev_priv(netdev);

 return card->options.rx_csum;
}
