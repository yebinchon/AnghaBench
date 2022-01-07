
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fec_enet_private {scalar_t__ opened; } ;


 int fec_enet_free_buffers (struct net_device*) ;
 int fec_stop (struct net_device*) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int
fec_enet_close(struct net_device *dev)
{
 struct fec_enet_private *fep = netdev_priv(dev);


 fep->opened = 0;
 netif_stop_queue(dev);
 fec_stop(dev);

        fec_enet_free_buffers(dev);

 return 0;
}
