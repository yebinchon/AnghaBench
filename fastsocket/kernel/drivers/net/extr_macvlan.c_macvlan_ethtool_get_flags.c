
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct macvlan_dev {int lowerdev; } ;


 int dev_ethtool_get_flags (int ) ;
 struct macvlan_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 macvlan_ethtool_get_flags(struct net_device *dev)
{
 const struct macvlan_dev *vlan = netdev_priv(dev);
 return dev_ethtool_get_flags(vlan->lowerdev);
}
