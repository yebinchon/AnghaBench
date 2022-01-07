
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int dma_chan_link_map ;
struct TYPE_2__ {int next_lch; int flags; } ;


 int CCR (int) ;
 int CLNK_CTRL (int) ;
 scalar_t__ OMAP2430_REV_ES1_0 ;
 int OMAP_DMA4_LOGICAL_DMA_CH_COUNT ;
 int OMAP_DMA_ACTIVE ;
 int OMAP_DMA_CCR_EN ;
 scalar_t__ cpu_is_omap242x () ;
 scalar_t__ cpu_is_omap243x () ;
 scalar_t__ cpu_is_omap24xx () ;
 TYPE_1__* dma_chan ;
 int dma_read (int ) ;
 int dma_write (int,int ) ;
 int enable_lnk (int) ;
 int memset (char*,int ,int) ;
 int omap_dma_in_1510_mode () ;
 int omap_enable_channel_irq (int) ;
 scalar_t__ omap_type () ;

void omap_start_dma(int lch)
{
 u32 l;

 if (!omap_dma_in_1510_mode() && dma_chan[lch].next_lch != -1) {
  int next_lch, cur_lch;
  char dma_chan_link_map[OMAP_DMA4_LOGICAL_DMA_CH_COUNT];

  dma_chan_link_map[lch] = 1;

  enable_lnk(lch);

  memset(dma_chan_link_map, 0, sizeof(dma_chan_link_map));
  cur_lch = dma_chan[lch].next_lch;
  do {
   next_lch = dma_chan[cur_lch].next_lch;


   if (dma_chan_link_map[cur_lch])
    break;

   dma_chan_link_map[cur_lch] = 1;

   enable_lnk(cur_lch);
   omap_enable_channel_irq(cur_lch);

   cur_lch = next_lch;
  } while (next_lch != -1);
 } else if (cpu_is_omap242x() ||
  (cpu_is_omap243x() && omap_type() <= OMAP2430_REV_ES1_0)) {


  dma_write(lch, CLNK_CTRL(lch));
 }

 omap_enable_channel_irq(lch);

 l = dma_read(CCR(lch));





 if (cpu_is_omap24xx())
  l |= OMAP_DMA_CCR_EN;

 l |= OMAP_DMA_CCR_EN;
 dma_write(l, CCR(lch));

 dma_chan[lch].flags |= OMAP_DMA_ACTIVE;
}
