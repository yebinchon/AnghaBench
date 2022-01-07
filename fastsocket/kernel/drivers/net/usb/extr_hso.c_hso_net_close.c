
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct hso_net {int parent; int flags; } ;


 int HSO_NET_RUNNING ;
 int clear_bit (int ,int *) ;
 int hso_stop_net_device (int ) ;
 struct hso_net* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int hso_net_close(struct net_device *net)
{
 struct hso_net *odev = netdev_priv(net);


 netif_stop_queue(net);

 clear_bit(HSO_NET_RUNNING, &odev->flags);

 hso_stop_net_device(odev->parent);


 return 0;
}
