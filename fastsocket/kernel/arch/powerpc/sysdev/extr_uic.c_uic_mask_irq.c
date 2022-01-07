
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uic {int lock; scalar_t__ dcrbase; } ;


 scalar_t__ UIC_ER ;
 struct uic* get_irq_chip_data (unsigned int) ;
 int mfdcr (scalar_t__) ;
 int mtdcr (scalar_t__,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int uic_irq_to_hw (unsigned int) ;

__attribute__((used)) static void uic_mask_irq(unsigned int virq)
{
 struct uic *uic = get_irq_chip_data(virq);
 unsigned int src = uic_irq_to_hw(virq);
 unsigned long flags;
 u32 er;

 spin_lock_irqsave(&uic->lock, flags);
 er = mfdcr(uic->dcrbase + UIC_ER);
 er &= ~(1 << (31 - src));
 mtdcr(uic->dcrbase + UIC_ER, er);
 spin_unlock_irqrestore(&uic->lock, flags);
}
