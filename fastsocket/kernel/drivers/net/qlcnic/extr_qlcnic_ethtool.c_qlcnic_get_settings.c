
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;


 int EIO ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ qlcnic_82xx_check (struct qlcnic_adapter*) ;
 int qlcnic_82xx_get_settings (struct qlcnic_adapter*,struct ethtool_cmd*) ;
 scalar_t__ qlcnic_83xx_check (struct qlcnic_adapter*) ;
 int qlcnic_83xx_get_settings (struct qlcnic_adapter*,struct ethtool_cmd*) ;

__attribute__((used)) static int
qlcnic_get_settings(struct net_device *dev, struct ethtool_cmd *ecmd)
{
 struct qlcnic_adapter *adapter = netdev_priv(dev);

 if (qlcnic_82xx_check(adapter))
  return qlcnic_82xx_get_settings(adapter, ecmd);
 else if (qlcnic_83xx_check(adapter))
  return qlcnic_83xx_get_settings(adapter, ecmd);

 return -EIO;
}
