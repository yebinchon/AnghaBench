
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int owner; int (* close ) (struct net_device*) ;} ;
struct arcnet_local {TYPE_1__ hw; } ;


 int ACOMMAND (int ) ;
 int AINTMASK (int ) ;
 int NORXcmd ;
 int NOTXcmd ;
 int mdelay (int) ;
 int module_put (int ) ;
 struct arcnet_local* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int stub1 (struct net_device*) ;

int arcnet_close(struct net_device *dev)
{
 struct arcnet_local *lp = netdev_priv(dev);

 netif_stop_queue(dev);


 AINTMASK(0);
 ACOMMAND(NOTXcmd);
 ACOMMAND(NORXcmd);
 mdelay(1);


 lp->hw.close(dev);
 module_put(lp->hw.owner);
 return 0;
}
