
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct temac_local {int * phy_dev; int rx_irq; int tx_irq; } ;
struct net_device {int dev; } ;


 int dev_dbg (int *,char*) ;
 int free_irq (int ,struct net_device*) ;
 struct temac_local* netdev_priv (struct net_device*) ;
 int phy_disconnect (int *) ;

__attribute__((used)) static int temac_stop(struct net_device *ndev)
{
 struct temac_local *lp = netdev_priv(ndev);

 dev_dbg(&ndev->dev, "temac_close()\n");

 free_irq(lp->tx_irq, ndev);
 free_irq(lp->rx_irq, ndev);

 if (lp->phy_dev)
  phy_disconnect(lp->phy_dev);
 lp->phy_dev = ((void*)0);

 return 0;
}
