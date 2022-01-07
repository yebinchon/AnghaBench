
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ addr_len; scalar_t__ hard_header_len; int type; int mtu; int * header_ops; int * netdev_ops; } ;


 int ARPHRD_HWX25 ;
 int CYCX_X25_CHAN_MTU ;
 int cycx_header_ops ;
 int cycx_netdev_ops ;

__attribute__((used)) static void cycx_x25_chan_setup(struct net_device *dev)
{

 dev->netdev_ops = &cycx_netdev_ops;
 dev->header_ops = &cycx_header_ops;


 dev->mtu = CYCX_X25_CHAN_MTU;
 dev->type = ARPHRD_HWX25;
 dev->hard_header_len = 0;
 dev->addr_len = 0;
}
