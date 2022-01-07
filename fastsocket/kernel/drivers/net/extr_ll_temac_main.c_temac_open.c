
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct temac_local {int dev; int * phy_dev; int tx_irq; int rx_irq; scalar_t__ phy_node; int ndev; } ;
struct net_device {int name; int dev; } ;


 int ENODEV ;
 int dev_dbg (int *,char*) ;
 int dev_err (int ,char*) ;
 int free_irq (int ,struct net_device*) ;
 int ll_temac_rx_irq ;
 int ll_temac_tx_irq ;
 struct temac_local* netdev_priv (struct net_device*) ;
 int * of_phy_connect (int ,scalar_t__,int ,int ,int ) ;
 int phy_disconnect (int *) ;
 int phy_start (int *) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;
 int temac_adjust_link ;
 int temac_device_reset (struct net_device*) ;

__attribute__((used)) static int temac_open(struct net_device *ndev)
{
 struct temac_local *lp = netdev_priv(ndev);
 int rc;

 dev_dbg(&ndev->dev, "temac_open()\n");

 if (lp->phy_node) {
  lp->phy_dev = of_phy_connect(lp->ndev, lp->phy_node,
          temac_adjust_link, 0, 0);
  if (!lp->phy_dev) {
   dev_err(lp->dev, "of_phy_connect() failed\n");
   return -ENODEV;
  }

  phy_start(lp->phy_dev);
 }

 rc = request_irq(lp->tx_irq, ll_temac_tx_irq, 0, ndev->name, ndev);
 if (rc)
  goto err_tx_irq;
 rc = request_irq(lp->rx_irq, ll_temac_rx_irq, 0, ndev->name, ndev);
 if (rc)
  goto err_rx_irq;

 temac_device_reset(ndev);
 return 0;

 err_rx_irq:
 free_irq(lp->tx_irq, ndev);
 err_tx_irq:
 if (lp->phy_dev)
  phy_disconnect(lp->phy_dev);
 lp->phy_dev = ((void*)0);
 dev_err(lp->dev, "request_irq() failed\n");
 return rc;
}
