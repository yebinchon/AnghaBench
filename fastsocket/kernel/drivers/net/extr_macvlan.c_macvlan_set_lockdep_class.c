
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int addr_list_lock; } ;


 int lockdep_set_class (int *,int *) ;
 int macvlan_netdev_addr_lock_key ;
 int macvlan_set_lockdep_class_one ;
 int netdev_for_each_tx_queue (struct net_device*,int ,int *) ;

__attribute__((used)) static void macvlan_set_lockdep_class(struct net_device *dev)
{
 lockdep_set_class(&dev->addr_list_lock,
     &macvlan_netdev_addr_lock_key);
 netdev_for_each_tx_queue(dev, macvlan_set_lockdep_class_one, ((void*)0));
}
