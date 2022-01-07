
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ebus_dma_info {int irq; int lock; scalar_t__ regs; } ;


 scalar_t__ EBDMA_CSR ;
 int EBDMA_CSR_INT_EN ;
 int free_irq (int ,struct ebus_dma_info*) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

void ebus_dma_unregister(struct ebus_dma_info *p)
{
 unsigned long flags;
 u32 csr;
 int irq_on = 0;

 spin_lock_irqsave(&p->lock, flags);
 csr = readl(p->regs + EBDMA_CSR);
 if (csr & EBDMA_CSR_INT_EN) {
  csr &= ~EBDMA_CSR_INT_EN;
  writel(csr, p->regs + EBDMA_CSR);
  irq_on = 1;
 }
 spin_unlock_irqrestore(&p->lock, flags);

 if (irq_on)
  free_irq(p->irq, p);
}
