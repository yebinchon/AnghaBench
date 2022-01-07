
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_group {int dummy; } ;
struct net_device {int dummy; } ;
struct bnad {int conf_mutex; struct vlan_group* vlan_grp; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct bnad* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
bnad_vlan_rx_register(struct net_device *netdev,
      struct vlan_group *vlan_grp)
{
 struct bnad *bnad = netdev_priv(netdev);

 mutex_lock(&bnad->conf_mutex);
 bnad->vlan_grp = vlan_grp;
 mutex_unlock(&bnad->conf_mutex);
}
