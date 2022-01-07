
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct macvlan_dev {int mode; } ;


 size_t IFLA_MACVLAN_MODE ;
 struct macvlan_dev* netdev_priv (struct net_device*) ;
 int nla_get_u32 (struct nlattr*) ;

__attribute__((used)) static int macvlan_changelink(struct net_device *dev,
  struct nlattr *tb[], struct nlattr *data[])
{
 struct macvlan_dev *vlan = netdev_priv(dev);
 if (data && data[IFLA_MACVLAN_MODE])
  vlan->mode = nla_get_u32(data[IFLA_MACVLAN_MODE]);
 return 0;
}
