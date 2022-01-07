
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; int destructor; int * netdev_ops; int flags; scalar_t__ tx_queue_len; scalar_t__ addr_len; scalar_t__ hard_header_len; int type; } ;
struct can_frame {int dummy; } ;


 int ARPHRD_CAN ;
 int IFF_ECHO ;
 int IFF_NOARP ;
 scalar_t__ echo ;
 int free_netdev ;
 int vcan_netdev_ops ;

__attribute__((used)) static void vcan_setup(struct net_device *dev)
{
 dev->type = ARPHRD_CAN;
 dev->mtu = sizeof(struct can_frame);
 dev->hard_header_len = 0;
 dev->addr_len = 0;
 dev->tx_queue_len = 0;
 dev->flags = IFF_NOARP;


 if (echo)
  dev->flags |= IFF_ECHO;

 dev->netdev_ops = &vcan_netdev_ops;
 dev->destructor = free_netdev;
}
