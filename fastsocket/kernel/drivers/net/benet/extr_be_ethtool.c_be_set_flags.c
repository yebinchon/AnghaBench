
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct be_adapter {int dummy; } ;


 int ETH_FLAG_RXHASH ;
 scalar_t__ be_multi_rxq (struct be_adapter*) ;
 int ethtool_op_set_flags (struct net_device*,int) ;
 struct be_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int be_set_flags(struct net_device *netdev, u32 data)
{
 struct be_adapter *adapter = netdev_priv(netdev);
 int rc = -1;

 if (be_multi_rxq(adapter) && !(data & ~ETH_FLAG_RXHASH))
  rc = ethtool_op_set_flags(netdev, data);

 return rc;
}
