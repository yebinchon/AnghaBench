
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int hard_header_len; int mtu; scalar_t__ addr_len; int type; int destructor; int * netdev_ops; } ;


 int ARPHRD_X25 ;
 int free_netdev ;
 int lapbeth_netdev_ops ;

__attribute__((used)) static void lapbeth_setup(struct net_device *dev)
{
 dev->netdev_ops = &lapbeth_netdev_ops;
 dev->destructor = free_netdev;
 dev->type = ARPHRD_X25;
 dev->hard_header_len = 3;
 dev->mtu = 1000;
 dev->addr_len = 0;
}
