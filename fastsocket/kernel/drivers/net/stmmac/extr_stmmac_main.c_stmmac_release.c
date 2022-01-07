
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int rx_recycle; int napi; int * tm; int * phydev; } ;
struct net_device {int base_addr; int irq; } ;


 int free_dma_desc_resources (struct stmmac_priv*) ;
 int free_irq (int ,struct net_device*) ;
 int kfree (int *) ;
 int napi_disable (int *) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_disconnect (int *) ;
 int phy_stop (int *) ;
 int skb_queue_purge (int *) ;
 int stmmac_close_ext_timer () ;
 int stmmac_dma_stop_rx (int ) ;
 int stmmac_dma_stop_tx (int ) ;
 int stmmac_mac_disable_rx (int ) ;
 int stmmac_mac_disable_tx (int ) ;

__attribute__((used)) static int stmmac_release(struct net_device *dev)
{
 struct stmmac_priv *priv = netdev_priv(dev);


 if (priv->phydev) {
  phy_stop(priv->phydev);
  phy_disconnect(priv->phydev);
  priv->phydev = ((void*)0);
 }

 netif_stop_queue(dev);







 napi_disable(&priv->napi);
 skb_queue_purge(&priv->rx_recycle);


 free_irq(dev->irq, dev);


 stmmac_dma_stop_tx(dev->base_addr);
 stmmac_dma_stop_rx(dev->base_addr);


 free_dma_desc_resources(priv);


 stmmac_mac_disable_tx(dev->base_addr);
 stmmac_mac_disable_rx(dev->base_addr);

 netif_carrier_off(dev);

 return 0;
}
