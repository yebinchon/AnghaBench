
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct macvlan_dev {int rx_stats; } ;


 int free_percpu (int ) ;
 struct macvlan_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static void macvlan_uninit(struct net_device *dev)
{
 struct macvlan_dev *vlan = netdev_priv(dev);

 free_percpu(vlan->rx_stats);
}
