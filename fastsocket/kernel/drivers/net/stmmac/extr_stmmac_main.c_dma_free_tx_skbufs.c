
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stmmac_priv {int dma_tx_size; int ** tx_skbuff; TYPE_2__* mac_type; int device; struct dma_desc* dma_tx; } ;
struct dma_desc {scalar_t__ des2; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* get_tx_len ) (struct dma_desc*) ;} ;


 int DMA_TO_DEVICE ;
 int dev_kfree_skb_any (int *) ;
 int dma_unmap_single (int ,scalar_t__,int ,int ) ;
 int stub1 (struct dma_desc*) ;

__attribute__((used)) static void dma_free_tx_skbufs(struct stmmac_priv *priv)
{
 int i;

 for (i = 0; i < priv->dma_tx_size; i++) {
  if (priv->tx_skbuff[i] != ((void*)0)) {
   struct dma_desc *p = priv->dma_tx + i;
   if (p->des2)
    dma_unmap_single(priv->device, p->des2,
     priv->mac_type->ops->get_tx_len(p),
     DMA_TO_DEVICE);
   dev_kfree_skb_any(priv->tx_skbuff[i]);
   priv->tx_skbuff[i] = ((void*)0);
  }
 }
 return;
}
