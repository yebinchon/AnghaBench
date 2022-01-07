
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev_id; int next_lch; int * callback; } ;


 int CCR (int) ;
 int CICR (int) ;
 int CSR (int) ;
 int IRQENABLE_L0 ;
 int IRQSTATUS_L0 ;
 int OMAP2_DMA_CSR_CLEAR_MASK ;
 scalar_t__ cpu_class_is_omap1 () ;
 scalar_t__ cpu_class_is_omap2 () ;
 TYPE_1__* dma_chan ;
 int dma_chan_lock ;
 int dma_read (int ) ;
 int dma_write (int,int ) ;
 int omap_clear_dma (int) ;
 int pr_err (char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void omap_free_dma(int lch)
{
 unsigned long flags;

 if (dma_chan[lch].dev_id == -1) {
  pr_err("omap_dma: trying to free unallocated DMA channel %d\n",
         lch);
  return;
 }

 if (cpu_class_is_omap1()) {

  dma_write(0, CICR(lch));

  dma_write(0, CCR(lch));
 }

 if (cpu_class_is_omap2()) {
  u32 val;

  spin_lock_irqsave(&dma_chan_lock, flags);

  val = dma_read(IRQENABLE_L0);
  val &= ~(1 << lch);
  dma_write(val, IRQENABLE_L0);
  spin_unlock_irqrestore(&dma_chan_lock, flags);


  dma_write(OMAP2_DMA_CSR_CLEAR_MASK, CSR(lch));
  dma_write(1 << lch, IRQSTATUS_L0);


  dma_write(0, CICR(lch));


  dma_write(0, CCR(lch));
  omap_clear_dma(lch);
 }

 spin_lock_irqsave(&dma_chan_lock, flags);
 dma_chan[lch].dev_id = -1;
 dma_chan[lch].next_lch = -1;
 dma_chan[lch].callback = ((void*)0);
 spin_unlock_irqrestore(&dma_chan_lock, flags);
}
