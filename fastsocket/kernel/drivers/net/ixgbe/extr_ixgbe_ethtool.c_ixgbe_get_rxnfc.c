
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ixgbe_adapter {int fdir_filter_count; int num_rx_queues; } ;
struct ethtool_rxnfc {int cmd; int rule_cnt; int data; } ;


 int EOPNOTSUPP ;





 int ixgbe_get_ethtool_fdir_all (struct ixgbe_adapter*,struct ethtool_rxnfc*,int *) ;
 int ixgbe_get_ethtool_fdir_entry (struct ixgbe_adapter*,struct ethtool_rxnfc*) ;
 int ixgbe_get_rss_hash_opts (struct ixgbe_adapter*,struct ethtool_rxnfc*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ixgbe_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
      void *rule_locs)
{
 struct ixgbe_adapter *adapter = netdev_priv(dev);
 int ret = -EOPNOTSUPP;

 switch (cmd->cmd) {
 case 128:
  cmd->data = adapter->num_rx_queues;
  ret = 0;
  break;
 case 131:
  cmd->rule_cnt = adapter->fdir_filter_count;
  ret = 0;
  break;
 case 130:
  ret = ixgbe_get_ethtool_fdir_entry(adapter, cmd);
  break;
 case 132:
  ret = ixgbe_get_ethtool_fdir_all(adapter, cmd,
       (u32 *)rule_locs);
  break;
 case 129:
  ret = ixgbe_get_rss_hash_opts(adapter, cmd);
  break;
 default:
  break;
 }

 return ret;
}
