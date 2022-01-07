
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int addr_list_lock; } ;


 int hostap_netdev_addr_lock_key ;
 int lockdep_set_class (int *,int *) ;
 int netdev_for_each_tx_queue (struct net_device*,int ,int *) ;
 int prism2_set_lockdep_class_one ;

__attribute__((used)) static void prism2_set_lockdep_class(struct net_device *dev)
{
 lockdep_set_class(&dev->addr_list_lock,
     &hostap_netdev_addr_lock_key);
 netdev_for_each_tx_queue(dev, prism2_set_lockdep_class_one, ((void*)0));
}
