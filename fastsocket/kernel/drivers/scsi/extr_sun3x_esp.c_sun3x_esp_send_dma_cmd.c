
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct esp {int dummy; } ;


 int BUG_ON (int) ;
 int DMA_ADDR ;
 int DMA_CSR ;
 int DMA_ENABLE ;
 int DMA_ST_WRITE ;
 int ESP_CMD_DMA ;
 int ESP_TCLOW ;
 int ESP_TCMED ;
 int dma_read32 (int ) ;
 int dma_write32 (int,int ) ;
 int scsi_esp_cmd (struct esp*,int) ;
 int sun3x_esp_write8 (struct esp*,int,int ) ;

__attribute__((used)) static void sun3x_esp_send_dma_cmd(struct esp *esp, u32 addr, u32 esp_count,
      u32 dma_count, int write, u8 cmd)
{
 u32 csr;

 BUG_ON(!(cmd & ESP_CMD_DMA));

 sun3x_esp_write8(esp, (esp_count >> 0) & 0xff, ESP_TCLOW);
 sun3x_esp_write8(esp, (esp_count >> 8) & 0xff, ESP_TCMED);
 csr = dma_read32(DMA_CSR);
 csr |= DMA_ENABLE;
 if (write)
  csr |= DMA_ST_WRITE;
 else
  csr &= ~DMA_ST_WRITE;
 dma_write32(csr, DMA_CSR);
 dma_write32(addr, DMA_ADDR);

 scsi_esp_cmd(esp, cmd);
}
