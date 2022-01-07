
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int tx_queue_len; int flags; int priv_flags; int features; int type; scalar_t__ addr_len; int mtu; int hard_header_len; int * netdev_ops; } ;


 int ARPHRD_PPP ;
 int IFF_MULTICAST ;
 int IFF_NOARP ;
 int IFF_POINTOPOINT ;
 int IFF_XMIT_DST_RELEASE ;
 int NETIF_F_NETNS_LOCAL ;
 int PPP_HDRLEN ;
 int PPP_MTU ;
 int ppp_netdev_ops ;

__attribute__((used)) static void ppp_setup(struct net_device *dev)
{
 dev->netdev_ops = &ppp_netdev_ops;
 dev->hard_header_len = PPP_HDRLEN;
 dev->mtu = PPP_MTU;
 dev->addr_len = 0;
 dev->tx_queue_len = 3;
 dev->type = ARPHRD_PPP;
 dev->flags = IFF_POINTOPOINT | IFF_NOARP | IFF_MULTICAST;
 dev->features |= NETIF_F_NETNS_LOCAL;
 dev->priv_flags &= ~IFF_XMIT_DST_RELEASE;
}
