
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct fec_enet_private {int link; int opened; TYPE_1__* phy; scalar_t__ sequence_done; } ;
struct TYPE_2__ {int startup; int config; int ack_int; } ;


 int fec_enet_alloc_buffers (struct net_device*) ;
 int fec_restart (struct net_device*,int) ;
 int mii_do_cmd (struct net_device*,int ) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int phy_cmd_config ;
 int schedule () ;

__attribute__((used)) static int
fec_enet_open(struct net_device *dev)
{
 struct fec_enet_private *fep = netdev_priv(dev);
 int ret;





 ret = fec_enet_alloc_buffers(dev);
 if (ret)
  return ret;

 fep->sequence_done = 0;
 fep->link = 0;

 fec_restart(dev, 1);

 if (fep->phy) {
  mii_do_cmd(dev, fep->phy->ack_int);
  mii_do_cmd(dev, fep->phy->config);
  mii_do_cmd(dev, phy_cmd_config);
  while(!fep->sequence_done)
   schedule();

  mii_do_cmd(dev, fep->phy->startup);
 }





 fep->link = 1;

 netif_start_queue(dev);
 fep->opened = 1;
 return 0;
}
