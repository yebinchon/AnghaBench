
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; int features; int destructor; int * netdev_ops; int * header_ops; int * ethtool_ops; int priv_flags; int flags; int type; scalar_t__ tx_queue_len; int addr_len; int hard_header_len; } ;


 int ARPHRD_LOOPBACK ;
 int ETH_ALEN ;
 int ETH_HLEN ;
 int IFF_LOOPBACK ;
 int IFF_XMIT_DST_RELEASE ;
 int NETIF_F_FRAGLIST ;
 int NETIF_F_HIGHDMA ;
 int NETIF_F_LLTX ;
 int NETIF_F_NETNS_LOCAL ;
 int NETIF_F_NO_CSUM ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 int NETIF_F_VLAN_CHALLENGED ;
 int eth_header_ops ;
 int loopback_dev_free ;
 int loopback_ethtool_ops ;
 int loopback_ops ;

__attribute__((used)) static void loopback_setup(struct net_device *dev)
{
 dev->mtu = (16 * 1024) + 20 + 20 + 12;
 dev->hard_header_len = ETH_HLEN;
 dev->addr_len = ETH_ALEN;
 dev->tx_queue_len = 0;
 dev->type = ARPHRD_LOOPBACK;
 dev->flags = IFF_LOOPBACK;
 dev->priv_flags &= ~IFF_XMIT_DST_RELEASE;
 dev->features = NETIF_F_SG | NETIF_F_FRAGLIST
  | NETIF_F_TSO
  | NETIF_F_NO_CSUM
  | NETIF_F_HIGHDMA
  | NETIF_F_LLTX
  | NETIF_F_NETNS_LOCAL
  | NETIF_F_VLAN_CHALLENGED;
 dev->ethtool_ops = &loopback_ethtool_ops;
 dev->header_ops = &eth_header_ops;
 dev->netdev_ops = &loopback_ops;
 dev->destructor = loopback_dev_free;
}
