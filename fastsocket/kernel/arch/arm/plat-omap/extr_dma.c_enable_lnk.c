
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int next_lch; int next_linked_ch; } ;


 int CLNK_CTRL (int) ;
 scalar_t__ cpu_class_is_omap1 () ;
 scalar_t__ cpu_class_is_omap2 () ;
 TYPE_1__* dma_chan ;
 int dma_read (int ) ;
 int dma_write (int,int ) ;

__attribute__((used)) static inline void enable_lnk(int lch)
{
 u32 l;

 l = dma_read(CLNK_CTRL(lch));

 if (cpu_class_is_omap1())
  l &= ~(1 << 14);


 if (dma_chan[lch].next_lch != -1)
  l = dma_chan[lch].next_lch | (1 << 15);


 if (cpu_class_is_omap2())
  if (dma_chan[lch].next_linked_ch != -1)
   l = dma_chan[lch].next_linked_ch | (1 << 15);


 dma_write(l, CLNK_CTRL(lch));
}
