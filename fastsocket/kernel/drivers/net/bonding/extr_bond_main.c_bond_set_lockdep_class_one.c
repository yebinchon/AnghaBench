
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {int _xmit_lock; } ;
struct net_device {int dummy; } ;


 int bonding_netdev_xmit_lock_key ;
 int lockdep_set_class (int *,int *) ;

__attribute__((used)) static void bond_set_lockdep_class_one(struct net_device *dev,
           struct netdev_queue *txq,
           void *_unused)
{
 lockdep_set_class(&txq->_xmit_lock,
     &bonding_netdev_xmit_lock_key);
}
