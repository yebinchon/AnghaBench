
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_group {int dummy; } ;
struct net_device {int dummy; } ;
struct enic {struct vlan_group* vlan_group; } ;


 struct enic* netdev_priv (struct net_device*) ;

__attribute__((used)) static void enic_vlan_rx_register(struct net_device *netdev,
 struct vlan_group *vlan_group)
{
 struct enic *enic = netdev_priv(netdev);
 enic->vlan_group = vlan_group;
}
