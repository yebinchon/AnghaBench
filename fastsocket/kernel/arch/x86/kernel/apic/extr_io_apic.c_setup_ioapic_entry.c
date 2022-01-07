
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irte {int present; int vector; unsigned int dest; int mask; int trigger; int polarity; int dest_mode; int delivery_mode; int dest_id; int dlvry_mode; scalar_t__ trigger_mode; int dst_mode; } ;
struct intel_iommu {int dummy; } ;
struct IR_IO_APIC_route_entry {int index2; int format; int index; int vector; scalar_t__ zero; } ;
struct IO_APIC_route_entry {int present; int vector; unsigned int dest; int mask; int trigger; int polarity; int dest_mode; int delivery_mode; int dest_id; int dlvry_mode; scalar_t__ trigger_mode; int dst_mode; } ;
typedef int irte ;
struct TYPE_2__ {int irq_dest_mode; int irq_delivery_mode; } ;


 int IRTE_DEST (unsigned int) ;
 int alloc_irte (struct intel_iommu*,int,int) ;
 TYPE_1__* apic ;
 scalar_t__ intr_remapping_enabled ;
 struct intel_iommu* map_ioapic_to_ir (int) ;
 int memset (struct irte*,int ,int) ;
 int modify_irte (int,struct irte*) ;
 int panic (char*,int) ;
 int set_ioapic_sid (struct irte*,int) ;

int setup_ioapic_entry(int apic_id, int irq,
         struct IO_APIC_route_entry *entry,
         unsigned int destination, int trigger,
         int polarity, int vector, int pin)
{



 memset(entry,0,sizeof(*entry));

 if (intr_remapping_enabled) {
  struct intel_iommu *iommu = map_ioapic_to_ir(apic_id);
  struct irte irte;
  struct IR_IO_APIC_route_entry *ir_entry =
   (struct IR_IO_APIC_route_entry *) entry;
  int index;

  if (!iommu)
   panic("No mapping iommu for ioapic %d\n", apic_id);

  index = alloc_irte(iommu, irq, 1);
  if (index < 0)
   panic("Failed to allocate IRTE for ioapic %d\n", apic_id);

  memset(&irte, 0, sizeof(irte));

  irte.present = 1;
  irte.dst_mode = apic->irq_dest_mode;







  irte.trigger_mode = 0;
  irte.dlvry_mode = apic->irq_delivery_mode;
  irte.vector = vector;
  irte.dest_id = IRTE_DEST(destination);


  set_ioapic_sid(&irte, apic_id);

  modify_irte(irq, &irte);

  ir_entry->index2 = (index >> 15) & 0x1;
  ir_entry->zero = 0;
  ir_entry->format = 1;
  ir_entry->index = (index & 0x7fff);




  ir_entry->vector = pin;
 } else {
  entry->delivery_mode = apic->irq_delivery_mode;
  entry->dest_mode = apic->irq_dest_mode;
  entry->dest = destination;
  entry->vector = vector;
 }

 entry->mask = 0;
 entry->trigger = trigger;
 entry->polarity = polarity;




 if (trigger)
  entry->mask = 1;
 return 0;
}
