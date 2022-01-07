
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct fec_enet_private {int full_duplex; } ;


 int fec_restart (struct net_device*,int ) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void
fec_timeout(struct net_device *dev)
{
 struct fec_enet_private *fep = netdev_priv(dev);

 dev->stats.tx_errors++;

 fec_restart(dev, fep->full_duplex);
 netif_wake_queue(dev);
}
