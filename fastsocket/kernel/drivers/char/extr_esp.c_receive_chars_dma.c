
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esp_struct {int stat_flags; } ;


 int DMA_MODE_READ ;
 int ESI_START_DMA_RX ;
 int ESP_STAT_DMA_RX ;
 int ESP_STAT_RX_TIMEOUT ;
 int UART_ESI_CMD1 ;
 int dma ;
 int dma_buffer ;
 int dma_bytes ;
 int isa_virt_to_bus (int ) ;
 int program_isa_dma (int ,int ,int ,int) ;
 int serial_out (struct esp_struct*,int ,int ) ;

__attribute__((used)) static void receive_chars_dma(struct esp_struct *info, int num_bytes)
{
 info->stat_flags &= ~ESP_STAT_RX_TIMEOUT;
 dma_bytes = num_bytes;
 info->stat_flags |= ESP_STAT_DMA_RX;

 program_isa_dma(dma, DMA_MODE_READ, isa_virt_to_bus(dma_buffer),
        dma_bytes);
 serial_out(info, UART_ESI_CMD1, ESI_START_DMA_RX);
}
