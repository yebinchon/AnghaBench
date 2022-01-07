
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int tx_queue_len; int type; int hard_header_len; int addr_len; int features; int watchdog_timeo; int * netdev_ops; int * header_ops; } ;


 int ARPHRD_IEEE1394 ;
 int ETH1394_ALEN ;
 int ETH1394_HLEN ;
 int ETHER1394_TIMEOUT ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int NETIF_F_HIGHDMA ;
 int SET_ETHTOOL_OPS (struct net_device*,int *) ;
 int ether1394_header_ops ;
 int ether1394_netdev_ops ;
 int ethtool_ops ;

__attribute__((used)) static void ether1394_init_dev(struct net_device *dev)
{

 dev->header_ops = &ether1394_header_ops;
 dev->netdev_ops = &ether1394_netdev_ops;

 SET_ETHTOOL_OPS(dev, &ethtool_ops);

 dev->watchdog_timeo = ETHER1394_TIMEOUT;
 dev->flags = IFF_BROADCAST | IFF_MULTICAST;
 dev->features = NETIF_F_HIGHDMA;
 dev->addr_len = ETH1394_ALEN;
 dev->hard_header_len = ETH1394_HLEN;
 dev->type = ARPHRD_IEEE1394;


 dev->tx_queue_len = 1000;
}
