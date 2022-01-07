
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mv643xx_eth_private {int dummy; } ;
struct ethtool_coalesce {int tx_coalesce_usecs; int rx_coalesce_usecs; } ;


 struct mv643xx_eth_private* netdev_priv (struct net_device*) ;
 int set_rx_coal (struct mv643xx_eth_private*,int ) ;
 int set_tx_coal (struct mv643xx_eth_private*,int ) ;

__attribute__((used)) static int
mv643xx_eth_set_coalesce(struct net_device *dev, struct ethtool_coalesce *ec)
{
 struct mv643xx_eth_private *mp = netdev_priv(dev);

 set_rx_coal(mp, ec->rx_coalesce_usecs);
 set_tx_coal(mp, ec->tx_coalesce_usecs);

 return 0;
}
