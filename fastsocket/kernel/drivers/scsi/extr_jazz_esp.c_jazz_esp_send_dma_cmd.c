
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct esp {scalar_t__ dma_regs; } ;


 int BUG_ON (int) ;
 int DMA_MODE_READ ;
 int DMA_MODE_WRITE ;
 int ESP_CMD_DMA ;
 int ESP_TCLOW ;
 int ESP_TCMED ;
 int jazz_esp_write8 (struct esp*,int,int ) ;
 int scsi_esp_cmd (struct esp*,int) ;
 int vdma_disable (int) ;
 int vdma_enable (int) ;
 int vdma_set_addr (int,int) ;
 int vdma_set_count (int,int) ;
 int vdma_set_mode (int,int ) ;

__attribute__((used)) static void jazz_esp_send_dma_cmd(struct esp *esp, u32 addr, u32 esp_count,
      u32 dma_count, int write, u8 cmd)
{
 BUG_ON(!(cmd & ESP_CMD_DMA));

 jazz_esp_write8(esp, (esp_count >> 0) & 0xff, ESP_TCLOW);
 jazz_esp_write8(esp, (esp_count >> 8) & 0xff, ESP_TCMED);
 vdma_disable ((int)esp->dma_regs);
 if (write)
  vdma_set_mode ((int)esp->dma_regs, DMA_MODE_READ);
 else
  vdma_set_mode ((int)esp->dma_regs, DMA_MODE_WRITE);

 vdma_set_addr ((int)esp->dma_regs, addr);
 vdma_set_count ((int)esp->dma_regs, dma_count);
 vdma_enable ((int)esp->dma_regs);

 scsi_esp_cmd(esp, cmd);
}
