
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; int flags; int * netdev_ops; int watchdog_timeo; int tx_queue_len; int mtu; } ;


 int I2400M_MAX_MTU ;
 int I2400M_TX_QLEN ;
 int I2400M_TX_TIMEOUT ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_NOARP ;
 int NETIF_F_HIGHDMA ;
 int NETIF_F_VLAN_CHALLENGED ;
 int d_fnend (int,int *,char*,struct net_device*) ;
 int d_fnstart (int,int *,char*,struct net_device*) ;
 int ether_setup (struct net_device*) ;
 int i2400m_netdev_ops ;

void i2400m_netdev_setup(struct net_device *net_dev)
{
 d_fnstart(3, ((void*)0), "(net_dev %p)\n", net_dev);
 ether_setup(net_dev);
 net_dev->mtu = I2400M_MAX_MTU;
 net_dev->tx_queue_len = I2400M_TX_QLEN;
 net_dev->features =
    NETIF_F_VLAN_CHALLENGED
  | NETIF_F_HIGHDMA;
 net_dev->flags =
  IFF_NOARP
  & (~IFF_BROADCAST
     & ~IFF_MULTICAST);
 net_dev->watchdog_timeo = I2400M_TX_TIMEOUT;
 net_dev->netdev_ops = &i2400m_netdev_ops;
 d_fnend(3, ((void*)0), "(net_dev %p) = void\n", net_dev);
}
