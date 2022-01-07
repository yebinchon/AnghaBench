
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ebus_dma_info {int flags; int irq; int lock; scalar_t__ regs; int name; } ;


 scalar_t__ EBDMA_CSR ;
 int EBDMA_CSR_INT_EN ;
 int EBUSY ;
 int EBUS_DMA_FLAG_USE_EBDMA_HANDLER ;
 int IRQF_SHARED ;
 int ebus_dma_irq ;
 int free_irq (int ,struct ebus_dma_info*) ;
 int readl (scalar_t__) ;
 scalar_t__ request_irq (int ,int ,int ,int ,struct ebus_dma_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

int ebus_dma_irq_enable(struct ebus_dma_info *p, int on)
{
 unsigned long flags;
 u32 csr;

 if (on) {
  if (p->flags & EBUS_DMA_FLAG_USE_EBDMA_HANDLER) {
   if (request_irq(p->irq, ebus_dma_irq, IRQF_SHARED, p->name, p))
    return -EBUSY;
  }

  spin_lock_irqsave(&p->lock, flags);
  csr = readl(p->regs + EBDMA_CSR);
  csr |= EBDMA_CSR_INT_EN;
  writel(csr, p->regs + EBDMA_CSR);
  spin_unlock_irqrestore(&p->lock, flags);
 } else {
  spin_lock_irqsave(&p->lock, flags);
  csr = readl(p->regs + EBDMA_CSR);
  csr &= ~EBDMA_CSR_INT_EN;
  writel(csr, p->regs + EBDMA_CSR);
  spin_unlock_irqrestore(&p->lock, flags);

  if (p->flags & EBUS_DMA_FLAG_USE_EBDMA_HANDLER) {
   free_irq(p->irq, p);
  }
 }

 return 0;
}
