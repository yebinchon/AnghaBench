
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int dma_chan_link_map ;
struct TYPE_2__ {int next_lch; int flags; } ;


 int CCR (int) ;
 int CICR (int) ;
 int OMAP_DMA4_LOGICAL_DMA_CH_COUNT ;
 int OMAP_DMA_ACTIVE ;
 int OMAP_DMA_CCR_EN ;
 scalar_t__ cpu_class_is_omap1 () ;
 int disable_lnk (int) ;
 TYPE_1__* dma_chan ;
 int dma_read (int ) ;
 int dma_write (int ,int ) ;
 int memset (char*,int ,int) ;
 int omap_dma_in_1510_mode () ;

void omap_stop_dma(int lch)
{
 u32 l;


 if (cpu_class_is_omap1())
  dma_write(0, CICR(lch));

 l = dma_read(CCR(lch));
 l &= ~OMAP_DMA_CCR_EN;
 dma_write(l, CCR(lch));

 if (!omap_dma_in_1510_mode() && dma_chan[lch].next_lch != -1) {
  int next_lch, cur_lch = lch;
  char dma_chan_link_map[OMAP_DMA4_LOGICAL_DMA_CH_COUNT];

  memset(dma_chan_link_map, 0, sizeof(dma_chan_link_map));
  do {

   if (dma_chan_link_map[cur_lch])
    break;

   dma_chan_link_map[cur_lch] = 1;

   disable_lnk(cur_lch);

   next_lch = dma_chan[cur_lch].next_lch;
   cur_lch = next_lch;
  } while (next_lch != -1);
 }

 dma_chan[lch].flags &= ~OMAP_DMA_ACTIVE;
}
