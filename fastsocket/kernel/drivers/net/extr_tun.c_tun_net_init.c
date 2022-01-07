
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tun_struct {int flags; } ;
struct net_device {int mtu; int flags; void* tx_queue_len; int dev_addr; int * netdev_ops; int type; int addr_len; int hard_header_len; } ;
struct TYPE_2__ {int ext_priv_flags; } ;


 int ARPHRD_NONE ;
 int IFF_MULTICAST ;
 int IFF_NOARP ;
 int IFF_POINTOPOINT ;
 int IFF_TX_SKB_SHARING ;
 void* TUN_READQ_SIZE ;


 int TUN_TYPE_MASK ;
 int ether_setup (struct net_device*) ;
 TYPE_1__* netdev_extended (struct net_device*) ;
 struct tun_struct* netdev_priv (struct net_device*) ;
 int random_ether_addr (int ) ;
 int tap_netdev_ops ;
 int tun_netdev_ops ;

__attribute__((used)) static void tun_net_init(struct net_device *dev)
{
 struct tun_struct *tun = netdev_priv(dev);

 switch (tun->flags & TUN_TYPE_MASK) {
 case 128:
  dev->netdev_ops = &tun_netdev_ops;


  dev->hard_header_len = 0;
  dev->addr_len = 0;
  dev->mtu = 1500;


  dev->type = ARPHRD_NONE;
  dev->flags = IFF_POINTOPOINT | IFF_NOARP | IFF_MULTICAST;
  dev->tx_queue_len = TUN_READQ_SIZE;
  break;

 case 129:
  dev->netdev_ops = &tap_netdev_ops;

  ether_setup(dev);
  netdev_extended(dev)->ext_priv_flags &= ~IFF_TX_SKB_SHARING;

  random_ether_addr(dev->dev_addr);

  dev->tx_queue_len = TUN_READQ_SIZE;
  break;
 }
}
