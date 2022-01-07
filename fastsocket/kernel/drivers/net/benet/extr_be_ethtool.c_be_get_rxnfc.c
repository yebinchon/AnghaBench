
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_rxnfc {int cmd; int data; int flow_type; } ;
struct be_adapter {int num_rx_qs; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;


 int be_get_rss_hash_opts (struct be_adapter*,int ) ;
 int be_multi_rxq (struct be_adapter*) ;
 int dev_info (int *,char*) ;
 struct be_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int be_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
        void *rule_locs)
{
 struct be_adapter *adapter = netdev_priv(netdev);

 if (!be_multi_rxq(adapter)) {
  dev_info(&adapter->pdev->dev,
    "ethtool::get_rxnfc: RX flow hashing is disabled\n");
  return -EINVAL;
 }

 switch (cmd->cmd) {
 case 129:
  cmd->data = be_get_rss_hash_opts(adapter, cmd->flow_type);
  break;
 case 128:
  cmd->data = adapter->num_rx_qs - 1;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
