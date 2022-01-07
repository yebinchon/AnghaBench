
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int enabled_irqs; } ;


 int CICR (int) ;
 int CSR (int) ;
 int OMAP2_DMA_CSR_CLEAR_MASK ;
 scalar_t__ cpu_class_is_omap1 () ;
 scalar_t__ cpu_class_is_omap2 () ;
 TYPE_1__* dma_chan ;
 int dma_read (int ) ;
 int dma_write (int ,int ) ;

__attribute__((used)) static inline void omap_enable_channel_irq(int lch)
{
 u32 status;


 if (cpu_class_is_omap1())
  status = dma_read(CSR(lch));
 else if (cpu_class_is_omap2())
  dma_write(OMAP2_DMA_CSR_CLEAR_MASK, CSR(lch));


 dma_write(dma_chan[lch].enabled_irqs, CICR(lch));
}
