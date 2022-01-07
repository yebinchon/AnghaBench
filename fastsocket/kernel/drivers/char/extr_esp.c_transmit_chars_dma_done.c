
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx; } ;
struct esp_struct {int stat_flags; TYPE_1__ icount; } ;


 int DMA_MODE_WRITE ;
 int ESI_START_DMA_TX ;
 int ESP_STAT_DMA_TX ;
 int UART_ESI_CMD1 ;
 unsigned long claim_dma_lock () ;
 int clear_dma_ff (int ) ;
 int disable_dma (int ) ;
 int dma ;
 scalar_t__ dma_buffer ;
 int dma_bytes ;
 int get_dma_residue (int ) ;
 int isa_virt_to_bus (scalar_t__) ;
 int memmove (scalar_t__,scalar_t__,int) ;
 int program_isa_dma (int ,int ,int ,int) ;
 int release_dma_lock (unsigned long) ;
 int serial_out (struct esp_struct*,int ,int ) ;

__attribute__((used)) static inline void transmit_chars_dma_done(struct esp_struct *info)
{
 int num_bytes;
 unsigned long flags;

 flags = claim_dma_lock();
 disable_dma(dma);
 clear_dma_ff(dma);

 num_bytes = dma_bytes - get_dma_residue(dma);
 info->icount.tx += dma_bytes;
 release_dma_lock(flags);

 if (dma_bytes != num_bytes) {
  dma_bytes -= num_bytes;
  memmove(dma_buffer, dma_buffer + num_bytes, dma_bytes);

  program_isa_dma(dma, DMA_MODE_WRITE,
    isa_virt_to_bus(dma_buffer), dma_bytes);

  serial_out(info, UART_ESI_CMD1, ESI_START_DMA_TX);
 } else {
  dma_bytes = 0;
  info->stat_flags &= ~ESP_STAT_DMA_TX;
 }
}
