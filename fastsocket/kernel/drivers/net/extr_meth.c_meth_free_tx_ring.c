
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meth_private {int tx_ring_dma; int tx_ring; int ** tx_skbs; } ;


 int TX_RING_BUFFER_SIZE ;
 int TX_RING_ENTRIES ;
 int dev_kfree_skb (int *) ;
 int dma_free_coherent (int *,int ,int ,int ) ;

__attribute__((used)) static void meth_free_tx_ring(struct meth_private *priv)
{
 int i;


 for (i = 0; i < TX_RING_ENTRIES; i++) {
  if (priv->tx_skbs[i])
   dev_kfree_skb(priv->tx_skbs[i]);
  priv->tx_skbs[i] = ((void*)0);
 }
 dma_free_coherent(((void*)0), TX_RING_BUFFER_SIZE, priv->tx_ring,
                   priv->tx_ring_dma);
}
