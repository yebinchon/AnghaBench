
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfront_info {int gref_rx_head; int gref_tx_head; } ;
struct net_device {int dummy; } ;


 int gnttab_free_grant_references (int ) ;
 struct netfront_info* netdev_priv (struct net_device*) ;
 int xennet_release_rx_bufs (struct netfront_info*) ;
 int xennet_release_tx_bufs (struct netfront_info*) ;

__attribute__((used)) static void xennet_uninit(struct net_device *dev)
{
 struct netfront_info *np = netdev_priv(dev);
 xennet_release_tx_bufs(np);
 xennet_release_rx_bufs(np);
 gnttab_free_grant_references(np->gref_tx_head);
 gnttab_free_grant_references(np->gref_rx_head);
}
