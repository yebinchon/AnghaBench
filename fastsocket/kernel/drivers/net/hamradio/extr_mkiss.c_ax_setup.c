
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int tx_queue_len; int flags; int dev_addr; int broadcast; int * netdev_ops; int * header_ops; int type; scalar_t__ addr_len; scalar_t__ hard_header_len; int mtu; } ;


 int ARPHRD_AX25 ;
 int AX25_ADDR_LEN ;
 int AX_MTU ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int ax25_bcast ;
 int ax25_defaddr ;
 int ax_header_ops ;
 int ax_netdev_ops ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static void ax_setup(struct net_device *dev)
{

 dev->mtu = AX_MTU;
 dev->hard_header_len = 0;
 dev->addr_len = 0;
 dev->type = ARPHRD_AX25;
 dev->tx_queue_len = 10;
 dev->header_ops = &ax_header_ops;
 dev->netdev_ops = &ax_netdev_ops;


 memcpy(dev->broadcast, &ax25_bcast, AX25_ADDR_LEN);
 memcpy(dev->dev_addr, &ax25_defaddr, AX25_ADDR_LEN);

 dev->flags = IFF_BROADCAST | IFF_MULTICAST;
}
