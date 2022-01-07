
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ixgbe_adapter {TYPE_1__* ring_feature; } ;
struct ethtool_channels {unsigned int combined_count; scalar_t__ other_count; scalar_t__ tx_count; scalar_t__ rx_count; } ;
struct TYPE_2__ {unsigned int limit; } ;


 int EINVAL ;
 unsigned int IXGBE_FCRETA_SIZE ;
 unsigned int IXGBE_MAX_RSS_INDICES ;
 scalar_t__ NON_Q_VECTORS ;
 size_t RING_F_FCOE ;
 size_t RING_F_FDIR ;
 size_t RING_F_RSS ;
 unsigned int ixgbe_max_channels (struct ixgbe_adapter*) ;
 int ixgbe_setup_tc (struct net_device*,int ) ;
 int netdev_get_num_tc (struct net_device*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ixgbe_set_channels(struct net_device *dev,
         struct ethtool_channels *ch)
{
 struct ixgbe_adapter *adapter = netdev_priv(dev);
 unsigned int count = ch->combined_count;


 if (!count || ch->rx_count || ch->tx_count)
  return -EINVAL;


 if (ch->other_count != NON_Q_VECTORS)
  return -EINVAL;


 if (count > ixgbe_max_channels(adapter))
  return -EINVAL;


 adapter->ring_feature[RING_F_FDIR].limit = count;


 if (count > IXGBE_MAX_RSS_INDICES)
  count = IXGBE_MAX_RSS_INDICES;
 adapter->ring_feature[RING_F_RSS].limit = count;
 return ixgbe_setup_tc(dev, netdev_get_num_tc(dev));
}
