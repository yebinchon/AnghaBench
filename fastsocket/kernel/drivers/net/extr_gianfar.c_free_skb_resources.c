
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct txbd8 {int length; scalar_t__ bufPtr; scalar_t__ lstatus; } ;
struct rxbd8 {scalar_t__ bufPtr; scalar_t__ lstatus; } ;
struct gfar_private {int tx_ring_size; int rx_ring_size; int ** rx_skbuff; int rx_buffer_size; TYPE_1__* ofdev; struct rxbd8* rx_bd_base; int ** tx_skbuff; struct txbd8* tx_bd_base; } ;
struct TYPE_4__ {int nr_frags; } ;
struct TYPE_3__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int dev_kfree_skb_any (int *) ;
 int dma_unmap_page (int *,scalar_t__,int ,int ) ;
 int dma_unmap_single (int *,scalar_t__,int ,int ) ;
 int kfree (int **) ;
 TYPE_2__* skb_shinfo (int *) ;

__attribute__((used)) static void free_skb_resources(struct gfar_private *priv)
{
 struct rxbd8 *rxbdp;
 struct txbd8 *txbdp;
 int i, j;


 txbdp = priv->tx_bd_base;

 for (i = 0; i < priv->tx_ring_size; i++) {
  if (!priv->tx_skbuff[i])
   continue;

  dma_unmap_single(&priv->ofdev->dev, txbdp->bufPtr,
    txbdp->length, DMA_TO_DEVICE);
  txbdp->lstatus = 0;
  for (j = 0; j < skb_shinfo(priv->tx_skbuff[i])->nr_frags; j++) {
   txbdp++;
   dma_unmap_page(&priv->ofdev->dev, txbdp->bufPtr,
     txbdp->length, DMA_TO_DEVICE);
  }
  txbdp++;
  dev_kfree_skb_any(priv->tx_skbuff[i]);
  priv->tx_skbuff[i] = ((void*)0);
 }

 kfree(priv->tx_skbuff);

 rxbdp = priv->rx_bd_base;



 if(priv->rx_skbuff != ((void*)0)) {
  for (i = 0; i < priv->rx_ring_size; i++) {
   if (priv->rx_skbuff[i]) {
    dma_unmap_single(&priv->ofdev->dev, rxbdp->bufPtr,
      priv->rx_buffer_size,
      DMA_FROM_DEVICE);

    dev_kfree_skb_any(priv->rx_skbuff[i]);
    priv->rx_skbuff[i] = ((void*)0);
   }

   rxbdp->lstatus = 0;
   rxbdp->bufPtr = 0;

   rxbdp++;
  }

  kfree(priv->rx_skbuff);
 }
}
