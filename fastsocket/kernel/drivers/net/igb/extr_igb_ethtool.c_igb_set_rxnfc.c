
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct igb_adapter {int dummy; } ;
struct ethtool_rxnfc {int cmd; } ;


 int EOPNOTSUPP ;

 int igb_set_rss_hash_opt (struct igb_adapter*,struct ethtool_rxnfc*) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int igb_set_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd)
{
 struct igb_adapter *adapter = netdev_priv(dev);
 int ret = -EOPNOTSUPP;

 switch (cmd->cmd) {
 case 128:
  ret = igb_set_rss_hash_opt(adapter, cmd);
  break;
 default:
  break;
 }

 return ret;
}
