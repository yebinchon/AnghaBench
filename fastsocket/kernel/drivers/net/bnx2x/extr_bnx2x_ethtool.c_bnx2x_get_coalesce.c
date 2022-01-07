
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_coalesce {int tx_coalesce_usecs; int rx_coalesce_usecs; } ;
struct bnx2x {int tx_ticks; int rx_ticks; } ;


 int memset (struct ethtool_coalesce*,int ,int) ;
 struct bnx2x* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnx2x_get_coalesce(struct net_device *dev,
         struct ethtool_coalesce *coal)
{
 struct bnx2x *bp = netdev_priv(dev);

 memset(coal, 0, sizeof(struct ethtool_coalesce));

 coal->rx_coalesce_usecs = bp->rx_ticks;
 coal->tx_coalesce_usecs = bp->tx_ticks;

 return 0;
}
