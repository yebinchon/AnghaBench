
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef unsigned int u64 ;


 int A_BCM1480_IMR_REGISTER (int ,scalar_t__) ;
 int BCM1480_IMR_HL_SPACING ;
 unsigned int BCM1480_NR_IRQS ;
 unsigned int BCM1480_NR_IRQS_HALF ;
 int IOADDR (int ) ;
 int NR_CPUS ;
 scalar_t__ R_BCM1480_IMR_LDT_INTERRUPT_CLR_H ;
 scalar_t__ R_BCM1480_IMR_LDT_INTERRUPT_H ;
 unsigned int __raw_readq (int ) ;
 int __raw_writeq (unsigned int,int ) ;
 int * bcm1480_irq_owner ;
 int bcm1480_mask_irq (int ,unsigned int) ;
 int cpu_logical_map (int) ;
 scalar_t__ ht_eoi_space ;

__attribute__((used)) static void ack_bcm1480_irq(unsigned int irq)
{
 u64 pending;
 unsigned int irq_dirty;
 int k;







 irq_dirty = irq;
 if ((irq_dirty >= BCM1480_NR_IRQS_HALF) && (irq_dirty <= BCM1480_NR_IRQS)) {
  irq_dirty -= BCM1480_NR_IRQS_HALF;
 }
 for (k=0; k<2; k++) {
  pending = __raw_readq(IOADDR(A_BCM1480_IMR_REGISTER(bcm1480_irq_owner[irq],
      R_BCM1480_IMR_LDT_INTERRUPT_H + (k*BCM1480_IMR_HL_SPACING))));
  pending &= ((u64)1 << (irq_dirty));
  if (pending) {
   __raw_writeq(pending, IOADDR(A_BCM1480_IMR_REGISTER(0, R_BCM1480_IMR_LDT_INTERRUPT_CLR_H + (k*BCM1480_IMR_HL_SPACING))));
  }
 }
 bcm1480_mask_irq(bcm1480_irq_owner[irq], irq);
}
