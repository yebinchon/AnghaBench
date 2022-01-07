
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 scalar_t__ DMA_BASE ;
 scalar_t__ DMA_DISR ;
 int IMX_DMA_CHANNELS ;
 int IRQ_HANDLED ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int,scalar_t__) ;
 int dma_err_handler (int,void*) ;
 int dma_irq_handle_channel (int) ;
 int pr_debug (char*,int) ;

__attribute__((used)) static irqreturn_t dma_irq_handler(int irq, void *dev_id)
{
 int i, disr;





 disr = __raw_readl(DMA_BASE + DMA_DISR);

 pr_debug("imxdma: dma_irq_handler called, disr=0x%08x\n",
       disr);

 __raw_writel(disr, DMA_BASE + DMA_DISR);
 for (i = 0; i < IMX_DMA_CHANNELS; i++) {
  if (disr & (1 << i))
   dma_irq_handle_channel(i);
 }

 return IRQ_HANDLED;
}
