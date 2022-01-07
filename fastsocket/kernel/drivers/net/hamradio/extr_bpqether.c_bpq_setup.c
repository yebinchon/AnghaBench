
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int addr_len; int mtu; scalar_t__ hard_header_len; int type; int * header_ops; scalar_t__ flags; int dev_addr; int broadcast; int destructor; int * netdev_ops; } ;


 int ARPHRD_AX25 ;
 int AX25_ADDR_LEN ;
 scalar_t__ AX25_BPQ_HEADER_LEN ;
 int AX25_DEF_PACLEN ;
 scalar_t__ AX25_MAX_HEADER_LEN ;
 int ax25_bcast ;
 int ax25_defaddr ;
 int ax25_header_ops ;
 int bpq_netdev_ops ;
 int free_netdev ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static void bpq_setup(struct net_device *dev)
{
 dev->netdev_ops = &bpq_netdev_ops;
 dev->destructor = free_netdev;

 memcpy(dev->broadcast, &ax25_bcast, AX25_ADDR_LEN);
 memcpy(dev->dev_addr, &ax25_defaddr, AX25_ADDR_LEN);

 dev->flags = 0;





 dev->type = ARPHRD_AX25;
 dev->hard_header_len = AX25_MAX_HEADER_LEN + AX25_BPQ_HEADER_LEN;
 dev->mtu = AX25_DEF_PACLEN;
 dev->addr_len = AX25_ADDR_LEN;

}
