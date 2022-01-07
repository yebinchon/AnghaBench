
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int dma_tx_size; int dma_rx_size; int tx_skbuff; int rx_skbuff; int rx_skbuff_dma; int dma_rx_phy; int dma_rx; int device; int dma_tx_phy; int dma_tx; } ;
struct dma_desc {int dummy; } ;


 int dma_free_coherent (int ,int,int ,int ) ;
 int dma_free_rx_skbufs (struct stmmac_priv*) ;
 int dma_free_tx_skbufs (struct stmmac_priv*) ;
 int kfree (int ) ;

__attribute__((used)) static void free_dma_desc_resources(struct stmmac_priv *priv)
{

 dma_free_rx_skbufs(priv);
 dma_free_tx_skbufs(priv);



 dma_free_coherent(priv->device,
     priv->dma_tx_size * sizeof(struct dma_desc),
     priv->dma_tx, priv->dma_tx_phy);
 dma_free_coherent(priv->device,
     priv->dma_rx_size * sizeof(struct dma_desc),
     priv->dma_rx, priv->dma_rx_phy);
 kfree(priv->rx_skbuff_dma);
 kfree(priv->rx_skbuff);
 kfree(priv->tx_skbuff);

 return;
}
