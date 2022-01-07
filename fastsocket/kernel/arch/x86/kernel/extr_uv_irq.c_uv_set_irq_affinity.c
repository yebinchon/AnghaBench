
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uv_IO_APIC_route_entry {unsigned int dest; scalar_t__ mask; scalar_t__ trigger; scalar_t__ polarity; int dest_mode; int delivery_mode; int vector; } ;
struct irq_desc {struct irq_cfg* chip_data; } ;
struct irq_cfg {scalar_t__ move_in_progress; int vector; } ;
struct cpumask {int dummy; } ;
struct TYPE_2__ {int irq_dest_mode; int irq_delivery_mode; } ;


 TYPE_1__* apic ;
 struct irq_desc* irq_to_desc (unsigned int) ;
 int send_cleanup_vector (struct irq_cfg*) ;
 scalar_t__ set_desc_affinity (struct irq_desc*,struct cpumask const*,unsigned int*) ;
 scalar_t__ uv_irq_2_mmr_info (unsigned int,unsigned long*,int*) ;
 int uv_write_global_mmr64 (int,unsigned long,unsigned long) ;

__attribute__((used)) static int uv_set_irq_affinity(unsigned int irq, const struct cpumask *mask)
{
 struct irq_desc *desc = irq_to_desc(irq);
 struct irq_cfg *cfg = desc->chip_data;
 unsigned int dest;
 unsigned long mmr_value;
 struct uv_IO_APIC_route_entry *entry;
 unsigned long mmr_offset;
 int mmr_pnode;

 if (set_desc_affinity(desc, mask, &dest))
  return -1;

 mmr_value = 0;
 entry = (struct uv_IO_APIC_route_entry *)&mmr_value;

 entry->vector = cfg->vector;
 entry->delivery_mode = apic->irq_delivery_mode;
 entry->dest_mode = apic->irq_dest_mode;
 entry->polarity = 0;
 entry->trigger = 0;
 entry->mask = 0;
 entry->dest = dest;


 if (uv_irq_2_mmr_info(irq, &mmr_offset, &mmr_pnode))
  return -1;

 uv_write_global_mmr64(mmr_pnode, mmr_offset, mmr_value);

 if (cfg->move_in_progress)
  send_cleanup_vector(cfg);

 return 0;
}
