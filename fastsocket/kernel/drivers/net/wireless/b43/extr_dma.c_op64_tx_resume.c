
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_dmaring {int dummy; } ;


 int B43_DMA64_TXCTL ;
 int B43_DMA64_TXSUSPEND ;
 int b43_dma_read (struct b43_dmaring*,int ) ;
 int b43_dma_write (struct b43_dmaring*,int ,int) ;

__attribute__((used)) static void op64_tx_resume(struct b43_dmaring *ring)
{
 b43_dma_write(ring, B43_DMA64_TXCTL, b43_dma_read(ring, B43_DMA64_TXCTL)
        & ~B43_DMA64_TXSUSPEND);
}
