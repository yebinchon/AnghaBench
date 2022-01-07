
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct macvlan_dev {int lowerdev; } ;
struct ethtool_cmd {int dummy; } ;


 int dev_ethtool_get_settings (int ,struct ethtool_cmd*) ;
 struct macvlan_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static int macvlan_ethtool_get_settings(struct net_device *dev,
     struct ethtool_cmd *cmd)
{
 const struct macvlan_dev *vlan = netdev_priv(dev);
 return dev_ethtool_get_settings(vlan->lowerdev, cmd);
}
