
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct net_device {int mem_start; } ;
struct ethoc {int membase; scalar_t__ dma_alloc; TYPE_1__* mdio; int * phy; } ;
struct TYPE_3__ {int irq; } ;


 int dma_free_coherent (int *,scalar_t__,int ,int ) ;
 int free_netdev (struct net_device*) ;
 int kfree (int ) ;
 int mdiobus_free (TYPE_1__*) ;
 int mdiobus_unregister (TYPE_1__*) ;
 struct ethoc* netdev_priv (struct net_device*) ;
 int phy_disconnect (int *) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int ethoc_remove(struct platform_device *pdev)
{
 struct net_device *netdev = platform_get_drvdata(pdev);
 struct ethoc *priv = netdev_priv(netdev);

 platform_set_drvdata(pdev, ((void*)0));

 if (netdev) {
  phy_disconnect(priv->phy);
  priv->phy = ((void*)0);

  if (priv->mdio) {
   mdiobus_unregister(priv->mdio);
   kfree(priv->mdio->irq);
   mdiobus_free(priv->mdio);
  }
  if (priv->dma_alloc)
   dma_free_coherent(((void*)0), priv->dma_alloc, priv->membase,
    netdev->mem_start);
  unregister_netdev(netdev);
  free_netdev(netdev);
 }

 return 0;
}
