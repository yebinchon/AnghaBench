
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixgbe_adapter {int dummy; } ;
struct ethtool_rxnfc {int cmd; } ;


 int EOPNOTSUPP ;



 int ixgbe_add_ethtool_fdir_entry (struct ixgbe_adapter*,struct ethtool_rxnfc*) ;
 int ixgbe_del_ethtool_fdir_entry (struct ixgbe_adapter*,struct ethtool_rxnfc*) ;
 int ixgbe_set_rss_hash_opt (struct ixgbe_adapter*,struct ethtool_rxnfc*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ixgbe_set_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd)
{
 struct ixgbe_adapter *adapter = netdev_priv(dev);
 int ret = -EOPNOTSUPP;

 switch (cmd->cmd) {
 case 129:
  ret = ixgbe_add_ethtool_fdir_entry(adapter, cmd);
  break;
 case 130:
  ret = ixgbe_del_ethtool_fdir_entry(adapter, cmd);
  break;
 case 128:
  ret = ixgbe_set_rss_hash_opt(adapter, cmd);
  break;
 default:
  break;
 }

 return ret;
}
