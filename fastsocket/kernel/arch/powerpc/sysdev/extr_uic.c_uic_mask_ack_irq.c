
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uic {int lock; scalar_t__ dcrbase; } ;
struct irq_desc {int status; } ;


 int IRQ_LEVEL ;
 scalar_t__ UIC_ER ;
 scalar_t__ UIC_SR ;
 struct uic* get_irq_chip_data (unsigned int) ;
 struct irq_desc* get_irq_desc (unsigned int) ;
 int mfdcr (scalar_t__) ;
 int mtdcr (scalar_t__,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int uic_irq_to_hw (unsigned int) ;

__attribute__((used)) static void uic_mask_ack_irq(unsigned int virq)
{
 struct irq_desc *desc = get_irq_desc(virq);
 struct uic *uic = get_irq_chip_data(virq);
 unsigned int src = uic_irq_to_hw(virq);
 unsigned long flags;
 u32 er, sr;

 sr = 1 << (31-src);
 spin_lock_irqsave(&uic->lock, flags);
 er = mfdcr(uic->dcrbase + UIC_ER);
 er &= ~sr;
 mtdcr(uic->dcrbase + UIC_ER, er);
 if (!(desc->status & IRQ_LEVEL))
  mtdcr(uic->dcrbase + UIC_SR, sr);
 spin_unlock_irqrestore(&uic->lock, flags);
}
