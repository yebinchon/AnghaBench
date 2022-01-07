
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int flags; } ;
struct TYPE_3__ {int tx_errors; } ;
struct fs_enet_private {int lock; int cur_tx; scalar_t__ tx_free; int phydev; TYPE_2__* ops; TYPE_1__ stats; } ;
struct TYPE_4__ {int (* restart ) (struct net_device*) ;int (* stop ) (struct net_device*) ;} ;


 int BD_ENET_TX_READY ;
 int CBDR_SC (int ) ;
 int IFF_UP ;
 struct fs_enet_private* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int phy_start (int ) ;
 int phy_stop (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct net_device*) ;
 int stub2 (struct net_device*) ;

__attribute__((used)) static void fs_timeout(struct net_device *dev)
{
 struct fs_enet_private *fep = netdev_priv(dev);
 unsigned long flags;
 int wake = 0;

 fep->stats.tx_errors++;

 spin_lock_irqsave(&fep->lock, flags);

 if (dev->flags & IFF_UP) {
  phy_stop(fep->phydev);
  (*fep->ops->stop)(dev);
  (*fep->ops->restart)(dev);
  phy_start(fep->phydev);
 }

 phy_start(fep->phydev);
 wake = fep->tx_free && !(CBDR_SC(fep->cur_tx) & BD_ENET_TX_READY);
 spin_unlock_irqrestore(&fep->lock, flags);

 if (wake)
  netif_wake_queue(dev);
}
