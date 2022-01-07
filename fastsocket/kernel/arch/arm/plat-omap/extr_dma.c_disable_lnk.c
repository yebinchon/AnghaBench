
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int flags; } ;


 int CICR (int) ;
 int CLNK_CTRL (int) ;
 int OMAP_DMA_ACTIVE ;
 scalar_t__ cpu_class_is_omap1 () ;
 scalar_t__ cpu_class_is_omap2 () ;
 TYPE_1__* dma_chan ;
 int dma_read (int ) ;
 int dma_write (int,int ) ;
 int omap_disable_channel_irq (int) ;

__attribute__((used)) static inline void disable_lnk(int lch)
{
 u32 l;

 l = dma_read(CLNK_CTRL(lch));


 if (cpu_class_is_omap1()) {
  dma_write(0, CICR(lch));

  l |= 1 << 14;
 }

 if (cpu_class_is_omap2()) {
  omap_disable_channel_irq(lch);

  l &= ~(1 << 15);
 }

 dma_write(l, CLNK_CTRL(lch));
 dma_chan[lch].flags &= ~OMAP_DMA_ACTIVE;
}
