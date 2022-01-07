
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct net_device {int dummy; } ;
struct fec_enet_private {int mii_phy_task_queued; int phy_task; } ;


 int INIT_WORK (int *,int ) ;
 int mii_relink ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void mii_queue_relink(uint mii_reg, struct net_device *dev)
{
 struct fec_enet_private *fep = netdev_priv(dev);
 if (fep->mii_phy_task_queued)
  return;

 fep->mii_phy_task_queued = 1;
 INIT_WORK(&fep->phy_task, mii_relink);
 schedule_work(&fep->phy_task);
}
