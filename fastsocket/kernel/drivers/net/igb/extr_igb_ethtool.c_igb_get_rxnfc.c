
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct igb_adapter {int num_rx_queues; } ;
struct ethtool_rxnfc {int cmd; int data; } ;


 int EOPNOTSUPP ;


 int igb_get_rss_hash_opts (struct igb_adapter*,struct ethtool_rxnfc*) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int igb_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
    void *rule_locs)
{
 struct igb_adapter *adapter = netdev_priv(dev);
 int ret = -EOPNOTSUPP;

 switch (cmd->cmd) {
 case 128:
  cmd->data = adapter->num_rx_queues;
  ret = 0;
  break;
 case 129:
  ret = igb_get_rss_hash_opts(adapter, cmd);
  break;
 default:
  break;
 }

 return ret;
}
