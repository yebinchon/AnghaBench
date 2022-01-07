
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int dma_rx_size; int ** rx_skbuff; int dma_buf_sz; int * rx_skbuff_dma; int device; } ;


 int DMA_FROM_DEVICE ;
 int dev_kfree_skb_any (int *) ;
 int dma_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void dma_free_rx_skbufs(struct stmmac_priv *priv)
{
 int i;

 for (i = 0; i < priv->dma_rx_size; i++) {
  if (priv->rx_skbuff[i]) {
   dma_unmap_single(priv->device, priv->rx_skbuff_dma[i],
      priv->dma_buf_sz, DMA_FROM_DEVICE);
   dev_kfree_skb_any(priv->rx_skbuff[i]);
  }
  priv->rx_skbuff[i] = ((void*)0);
 }
 return;
}
