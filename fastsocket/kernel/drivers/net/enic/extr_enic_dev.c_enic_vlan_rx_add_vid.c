
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct enic {int devcmd_lock; } ;


 int enic_add_vlan (struct enic*,int ) ;
 struct enic* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void enic_vlan_rx_add_vid(struct net_device *netdev, u16 vid)
{
 struct enic *enic = netdev_priv(netdev);

 spin_lock(&enic->devcmd_lock);
 enic_add_vlan(enic, vid);
 spin_unlock(&enic->devcmd_lock);
}
