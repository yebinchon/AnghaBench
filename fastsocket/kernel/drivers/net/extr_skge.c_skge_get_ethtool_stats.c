
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct skge_port {TYPE_1__* hw; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_2__ {scalar_t__ chip_id; } ;


 scalar_t__ CHIP_ID_GENESIS ;
 int genesis_get_stats (struct skge_port*,int *) ;
 struct skge_port* netdev_priv (struct net_device*) ;
 int yukon_get_stats (struct skge_port*,int *) ;

__attribute__((used)) static void skge_get_ethtool_stats(struct net_device *dev,
       struct ethtool_stats *stats, u64 *data)
{
 struct skge_port *skge = netdev_priv(dev);

 if (skge->hw->chip_id == CHIP_ID_GENESIS)
  genesis_get_stats(skge, data);
 else
  yukon_get_stats(skge, data);
}
