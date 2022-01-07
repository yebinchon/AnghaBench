
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; int flags; scalar_t__ tx_queue_len; int addr_len; int hard_header_len; int type; scalar_t__ watchdog_timeo; int * netdev_ops; } ;


 int ARPHRD_ETHER ;
 int ETH_ALEN ;
 int ETH_HLEN ;
 int IFF_NOARP ;
 int c2_pseudo_netdev_ops ;

__attribute__((used)) static void setup(struct net_device *netdev)
{
 netdev->netdev_ops = &c2_pseudo_netdev_ops;

 netdev->watchdog_timeo = 0;
 netdev->type = ARPHRD_ETHER;
 netdev->mtu = 1500;
 netdev->hard_header_len = ETH_HLEN;
 netdev->addr_len = ETH_ALEN;
 netdev->tx_queue_len = 0;
 netdev->flags |= IFF_NOARP;
}
