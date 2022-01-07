
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uic {int lock; scalar_t__ dcrbase; } ;


 scalar_t__ UIC_SR ;
 struct uic* get_irq_chip_data (unsigned int) ;
 int mtdcr (scalar_t__,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int uic_irq_to_hw (unsigned int) ;

__attribute__((used)) static void uic_ack_irq(unsigned int virq)
{
 struct uic *uic = get_irq_chip_data(virq);
 unsigned int src = uic_irq_to_hw(virq);
 unsigned long flags;

 spin_lock_irqsave(&uic->lock, flags);
 mtdcr(uic->dcrbase + UIC_SR, 1 << (31-src));
 spin_unlock_irqrestore(&uic->lock, flags);
}
