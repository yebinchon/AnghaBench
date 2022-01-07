
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pq2ads_pci_pic {TYPE_1__* regs; } ;
struct TYPE_2__ {int mask; } ;


 int NUM_IRQS ;
 int clrbits32 (int *,int) ;
 struct pq2ads_pci_pic* get_irq_chip_data (unsigned int) ;
 int pci_pic_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int virq_to_hw (unsigned int) ;

__attribute__((used)) static void pq2ads_pci_unmask_irq(unsigned int virq)
{
 struct pq2ads_pci_pic *priv = get_irq_chip_data(virq);
 int irq = NUM_IRQS - virq_to_hw(virq) - 1;

 if (irq != -1) {
  unsigned long flags;

  spin_lock_irqsave(&pci_pic_lock, flags);
  clrbits32(&priv->regs->mask, 1 << irq);
  spin_unlock_irqrestore(&pci_pic_lock, flags);
 }
}
