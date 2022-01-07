
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct esp {int dummy; } ;


 int DMA_CSR ;
 int DMA_INT_ENAB ;
 int DMA_RST_SCSI ;
 int dma_read32 (int ) ;
 int dma_write32 (int,int ) ;

__attribute__((used)) static void sun3x_esp_reset_dma(struct esp *esp)
{
 u32 val;

 val = dma_read32(DMA_CSR);
 dma_write32(val | DMA_RST_SCSI, DMA_CSR);
 dma_write32(val & ~DMA_RST_SCSI, DMA_CSR);


 val = dma_read32(DMA_CSR);
 dma_write32(val | DMA_INT_ENAB, DMA_CSR);
}
