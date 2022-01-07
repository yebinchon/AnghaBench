
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;


 unsigned int OCTEON_IRQ_MSI_BIT0 ;
 unsigned int OCTEON_IRQ_MSI_BIT63 ;
 unsigned int msi_free_irq_bitmask ;
 int msi_free_irq_bitmask_lock ;
 unsigned long long msi_multiple_irq_bitmask ;
 int panic (char*,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void arch_teardown_msi_irq(unsigned int irq)
{
 int number_irqs;
 uint64_t bitmask;

 if ((irq < OCTEON_IRQ_MSI_BIT0) || (irq > OCTEON_IRQ_MSI_BIT63))
  panic("arch_teardown_msi_irq: Attempted to teardown illegal "
        "MSI interrupt (%d)", irq);
 irq -= OCTEON_IRQ_MSI_BIT0;






 number_irqs = 0;
 while ((irq+number_irqs < 64) &&
        (msi_multiple_irq_bitmask & (1ull << (irq + number_irqs))))
  number_irqs++;
 number_irqs++;

 bitmask = (1 << number_irqs) - 1;

 bitmask <<= irq;
 if ((msi_free_irq_bitmask & bitmask) != bitmask)
  panic("arch_teardown_msi_irq: Attempted to teardown MSI "
        "interrupt (%d) not in use", irq);


 spin_lock(&msi_free_irq_bitmask_lock);
 msi_free_irq_bitmask &= ~bitmask;
 msi_multiple_irq_bitmask &= ~bitmask;
 spin_unlock(&msi_free_irq_bitmask_lock);
}
