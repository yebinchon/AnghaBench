
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int status; struct irq_cfg* chip_data; } ;
struct irq_cfg {int vector; } ;


 scalar_t__ APIC_TMR ;
 int IRQ_MOVE_PENDING ;
 int ack_APIC_irq () ;
 unsigned long apic_read (scalar_t__) ;
 int atomic_inc (int *) ;
 int eoi_ioapic_irq (struct irq_desc*) ;
 int io_apic_level_ack_pending (struct irq_cfg*) ;
 int irq_complete_move (struct irq_desc**) ;
 int irq_mis_count ;
 struct irq_desc* irq_to_desc (unsigned int) ;
 int mask_IO_APIC_irq_desc (struct irq_desc*) ;
 int move_masked_irq (unsigned int) ;
 scalar_t__ unlikely (int) ;
 int unmask_IO_APIC_irq_desc (struct irq_desc*) ;

__attribute__((used)) static void ack_apic_level(unsigned int irq)
{
 struct irq_desc *desc = irq_to_desc(irq);
 unsigned long v;
 int i;
 struct irq_cfg *cfg;
 int do_unmask_irq = 0;

 irq_complete_move(&desc);
 cfg = desc->chip_data;
 i = cfg->vector;
 v = apic_read(APIC_TMR + ((i & ~0x1f) >> 1));





 ack_APIC_irq();
 if (!(v & (1 << (i & 0x1f)))) {
  atomic_inc(&irq_mis_count);

  eoi_ioapic_irq(desc);
 }


 if (unlikely(do_unmask_irq)) {
  cfg = desc->chip_data;
  if (!io_apic_level_ack_pending(cfg))
   move_masked_irq(irq);
  unmask_IO_APIC_irq_desc(desc);
 }
}
