
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; int end; } ;
struct device {int dummy; } ;
struct net_device {int name; struct device dev; } ;
struct emac_priv {int ndev; int pdev; scalar_t__ phydev; int napi; } ;


 int EMAC_DEF_RX_CH ;
 int EMAC_DEF_TX_CH ;
 int EMAC_SOFTRESET ;
 int IORESOURCE_IRQ ;
 int dev_notice (struct device*,char*,int ) ;
 int emac_cleanup_rxch (struct emac_priv*,int ) ;
 int emac_cleanup_txch (struct emac_priv*,int ) ;
 int emac_int_disable (struct emac_priv*) ;
 int emac_stop_rxch (struct emac_priv*,int ) ;
 int emac_stop_txch (struct emac_priv*,int ) ;
 int emac_write (int ,int) ;
 int free_irq (int,int ) ;
 int napi_disable (int *) ;
 struct emac_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ netif_msg_drv (struct emac_priv*) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_disconnect (scalar_t__) ;
 struct resource* platform_get_resource (int ,int ,int) ;

__attribute__((used)) static int emac_dev_stop(struct net_device *ndev)
{
 struct resource *res;
 int i = 0;
 int irq_num;
 struct emac_priv *priv = netdev_priv(ndev);
 struct device *emac_dev = &ndev->dev;


 netif_stop_queue(ndev);
 napi_disable(&priv->napi);

 netif_carrier_off(ndev);
 emac_int_disable(priv);
 emac_stop_txch(priv, EMAC_DEF_TX_CH);
 emac_stop_rxch(priv, EMAC_DEF_RX_CH);
 emac_cleanup_txch(priv, EMAC_DEF_TX_CH);
 emac_cleanup_rxch(priv, EMAC_DEF_RX_CH);
 emac_write(EMAC_SOFTRESET, 1);

 if (priv->phydev)
  phy_disconnect(priv->phydev);


 while ((res = platform_get_resource(priv->pdev, IORESOURCE_IRQ, i))) {
  for (irq_num = res->start; irq_num <= res->end; irq_num++)
   free_irq(irq_num, priv->ndev);
  i++;
 }

 if (netif_msg_drv(priv))
  dev_notice(emac_dev, "DaVinci EMAC: %s stopped\n", ndev->name);

 return 0;
}
