
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int tx_queue_len; int hard_header_len; int addr_len; int * netdev_ops; int * header_ops; scalar_t__* dev_addr; scalar_t__ broadcast; int type; int mtu; scalar_t__ flags; scalar_t__ trans_start; } ;
typedef int STRIP_Header ;
typedef int MetricomAddress ;


 int ARPHRD_METRICOM ;
 int DEFAULT_STRIP_MTU ;
 int broadcast_address ;
 int strip_header_ops ;
 int strip_netdev_ops ;

__attribute__((used)) static void strip_dev_setup(struct net_device *dev)
{




 dev->trans_start = 0;
 dev->tx_queue_len = 30;

 dev->flags = 0;
 dev->mtu = DEFAULT_STRIP_MTU;
 dev->type = ARPHRD_METRICOM;
 dev->hard_header_len = sizeof(STRIP_Header);




 *(MetricomAddress *)dev->broadcast = broadcast_address;
 dev->dev_addr[0] = 0;
 dev->addr_len = sizeof(MetricomAddress);

 dev->header_ops = &strip_header_ops,
 dev->netdev_ops = &strip_netdev_ops;
}
