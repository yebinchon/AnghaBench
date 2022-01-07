
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_dmaring {scalar_t__ type; int mmio_base; int dev; scalar_t__ tx; } ;


 int B43_DMA32_RXRING ;
 int B43_DMA32_TXRING ;
 int B43_DMA64_RXRINGHI ;
 int B43_DMA64_RXRINGLO ;
 int B43_DMA64_TXRINGHI ;
 int B43_DMA64_TXRINGLO ;
 scalar_t__ B43_DMA_64BIT ;
 int b43_dma_write (struct b43_dmaring*,int ,int ) ;
 int b43_dmacontroller_rx_reset (int ,int ,scalar_t__) ;
 int b43_dmacontroller_tx_reset (int ,int ,scalar_t__) ;

__attribute__((used)) static void dmacontroller_cleanup(struct b43_dmaring *ring)
{
 if (ring->tx) {
  b43_dmacontroller_tx_reset(ring->dev, ring->mmio_base,
        ring->type);
  if (ring->type == B43_DMA_64BIT) {
   b43_dma_write(ring, B43_DMA64_TXRINGLO, 0);
   b43_dma_write(ring, B43_DMA64_TXRINGHI, 0);
  } else
   b43_dma_write(ring, B43_DMA32_TXRING, 0);
 } else {
  b43_dmacontroller_rx_reset(ring->dev, ring->mmio_base,
        ring->type);
  if (ring->type == B43_DMA_64BIT) {
   b43_dma_write(ring, B43_DMA64_RXRINGLO, 0);
   b43_dma_write(ring, B43_DMA64_RXRINGHI, 0);
  } else
   b43_dma_write(ring, B43_DMA32_RXRING, 0);
 }
}
