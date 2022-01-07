
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * rtnl_link_ops; } ;


 int can_link_ops ;
 int register_netdev (struct net_device*) ;

int register_candev(struct net_device *dev)
{
 dev->rtnl_link_ops = &can_link_ops;
 return register_netdev(dev);
}
