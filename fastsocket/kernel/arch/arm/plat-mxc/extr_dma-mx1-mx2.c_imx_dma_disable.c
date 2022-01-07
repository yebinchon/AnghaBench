
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_dma_channel {scalar_t__ in_use; int watchdog; } ;


 int CCR_CEN ;
 scalar_t__ DMA_BASE ;
 scalar_t__ DMA_CCR (int) ;
 scalar_t__ DMA_DIMR ;
 scalar_t__ DMA_DISR ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int,scalar_t__) ;
 int del_timer (int *) ;
 struct imx_dma_channel* imx_dma_channels ;
 scalar_t__ imx_dma_hw_chain (struct imx_dma_channel*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int pr_debug (char*,int) ;

void imx_dma_disable(int channel)
{
 struct imx_dma_channel *imxdma = &imx_dma_channels[channel];
 unsigned long flags;

 pr_debug("imxdma%d: imx_dma_disable\n", channel);

 if (imx_dma_hw_chain(imxdma))
  del_timer(&imxdma->watchdog);

 local_irq_save(flags);
 __raw_writel(__raw_readl(DMA_BASE + DMA_DIMR) | (1 << channel),
  DMA_BASE + DMA_DIMR);
 __raw_writel(__raw_readl(DMA_BASE + DMA_CCR(channel)) & ~CCR_CEN,
  DMA_BASE + DMA_CCR(channel));
 __raw_writel(1 << channel, DMA_BASE + DMA_DISR);
 imxdma->in_use = 0;
 local_irq_restore(flags);
}
