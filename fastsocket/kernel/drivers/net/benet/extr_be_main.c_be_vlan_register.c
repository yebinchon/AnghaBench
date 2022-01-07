
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_group {int dummy; } ;
struct net_device {int dummy; } ;
struct be_adapter {struct vlan_group* vlan_grp; } ;


 struct be_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void be_vlan_register(struct net_device *netdev, struct vlan_group *grp)
{
 struct be_adapter *adapter = netdev_priv(netdev);

 adapter->vlan_grp = grp;
}
