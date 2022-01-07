
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ebus_dma_info {int lock; scalar_t__ regs; } ;


 scalar_t__ EBDMA_CSR ;
 int EBDMA_CSR_EN_DMA ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

void ebus_dma_enable(struct ebus_dma_info *p, int on)
{
 unsigned long flags;
 u32 orig_csr, csr;

 spin_lock_irqsave(&p->lock, flags);
 orig_csr = csr = readl(p->regs + EBDMA_CSR);
 if (on)
  csr |= EBDMA_CSR_EN_DMA;
 else
  csr &= ~EBDMA_CSR_EN_DMA;
 if ((orig_csr & EBDMA_CSR_EN_DMA) !=
     (csr & EBDMA_CSR_EN_DMA))
  writel(csr, p->regs + EBDMA_CSR);
 spin_unlock_irqrestore(&p->lock, flags);
}
