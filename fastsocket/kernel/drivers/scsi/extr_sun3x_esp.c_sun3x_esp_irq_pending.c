
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esp {int dummy; } ;


 int DMA_CSR ;
 int DMA_HNDL_ERROR ;
 int DMA_HNDL_INTR ;
 int dma_read32 (int ) ;

__attribute__((used)) static int sun3x_esp_irq_pending(struct esp *esp)
{
 if (dma_read32(DMA_CSR) & (DMA_HNDL_INTR | DMA_HNDL_ERROR))
  return 1;
 return 0;
}
