
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; int flags; scalar_t__ tx_queue_len; int destructor; int * netdev_ops; } ;


 int IFF_MULTICAST ;
 int IFF_NOARP ;
 int dummy_netdev_ops ;
 int ether_setup (struct net_device*) ;
 int free_netdev ;
 int random_ether_addr (int ) ;

__attribute__((used)) static void dummy_setup(struct net_device *dev)
{
 ether_setup(dev);


 dev->netdev_ops = &dummy_netdev_ops;
 dev->destructor = free_netdev;


 dev->tx_queue_len = 0;
 dev->flags |= IFF_NOARP;
 dev->flags &= ~IFF_MULTICAST;
 random_ether_addr(dev->dev_addr);
}
