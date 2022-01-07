
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; scalar_t__ mc_count; } ;
struct kaweth_device {int packet_filter_bitmap; } ;
typedef int __u16 ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int KAWETH_PACKET_FILTER_ALL_MULTICAST ;
 int KAWETH_PACKET_FILTER_BROADCAST ;
 int KAWETH_PACKET_FILTER_DIRECTED ;
 int KAWETH_PACKET_FILTER_MULTICAST ;
 int KAWETH_PACKET_FILTER_PROMISCUOUS ;
 int dbg (char*,int) ;
 struct kaweth_device* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void kaweth_set_rx_mode(struct net_device *net)
{
 struct kaweth_device *kaweth = netdev_priv(net);

 __u16 packet_filter_bitmap = KAWETH_PACKET_FILTER_DIRECTED |
                                     KAWETH_PACKET_FILTER_BROADCAST |
                       KAWETH_PACKET_FILTER_MULTICAST;

 dbg("Setting Rx mode to %d", packet_filter_bitmap);

 netif_stop_queue(net);

 if (net->flags & IFF_PROMISC) {
  packet_filter_bitmap |= KAWETH_PACKET_FILTER_PROMISCUOUS;
 }
 else if ((net->mc_count) || (net->flags & IFF_ALLMULTI)) {
  packet_filter_bitmap |= KAWETH_PACKET_FILTER_ALL_MULTICAST;
 }

 kaweth->packet_filter_bitmap = packet_filter_bitmap;
 netif_wake_queue(net);
}
