
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uv_IO_APIC_route_entry {int dest; scalar_t__ mask; scalar_t__ trigger; scalar_t__ polarity; int dest_mode; int delivery_mode; int vector; } ;
struct irq_desc {int status; } ;
struct irq_cfg {scalar_t__ move_in_progress; int vector; } ;
struct cpumask {int dummy; } ;
struct TYPE_2__ {int (* cpu_mask_to_apicid ) (struct cpumask const*) ;int irq_dest_mode; int irq_delivery_mode; } ;


 int BUILD_BUG_ON (int) ;
 int IRQ_MOVE_PCNTXT ;
 int IRQ_NO_BALANCING ;
 int UV_AFFINITY_CPU ;
 TYPE_1__* apic ;
 int assign_irq_vector (unsigned int,struct irq_cfg*,struct cpumask const*) ;
 struct cpumask* cpumask_of (int) ;
 int handle_percpu_irq ;
 struct irq_cfg* irq_cfg (unsigned int) ;
 struct irq_desc* irq_to_desc (unsigned int) ;
 int send_cleanup_vector (struct irq_cfg*) ;
 int set_irq_chip_and_handler_name (unsigned int,int *,int ,char*) ;
 int stub1 (struct cpumask const*) ;
 int uv_blade_to_pnode (int) ;
 int uv_irq_chip ;
 int uv_write_global_mmr64 (int,unsigned long,unsigned long) ;

__attribute__((used)) static int
arch_enable_uv_irq(char *irq_name, unsigned int irq, int cpu, int mmr_blade,
         unsigned long mmr_offset, int limit)
{
 const struct cpumask *eligible_cpu = cpumask_of(cpu);
 struct irq_desc *desc = irq_to_desc(irq);
 struct irq_cfg *cfg;
 int mmr_pnode;
 unsigned long mmr_value;
 struct uv_IO_APIC_route_entry *entry;
 int err;

 BUILD_BUG_ON(sizeof(struct uv_IO_APIC_route_entry) !=
   sizeof(unsigned long));

 cfg = irq_cfg(irq);

 err = assign_irq_vector(irq, cfg, eligible_cpu);
 if (err != 0)
  return err;

 if (limit == UV_AFFINITY_CPU)
  desc->status |= IRQ_NO_BALANCING;
 else
  desc->status |= IRQ_MOVE_PCNTXT;

 set_irq_chip_and_handler_name(irq, &uv_irq_chip, handle_percpu_irq,
          irq_name);

 mmr_value = 0;
 entry = (struct uv_IO_APIC_route_entry *)&mmr_value;
 entry->vector = cfg->vector;
 entry->delivery_mode = apic->irq_delivery_mode;
 entry->dest_mode = apic->irq_dest_mode;
 entry->polarity = 0;
 entry->trigger = 0;
 entry->mask = 0;
 entry->dest = apic->cpu_mask_to_apicid(eligible_cpu);

 mmr_pnode = uv_blade_to_pnode(mmr_blade);
 uv_write_global_mmr64(mmr_pnode, mmr_offset, mmr_value);

 if (cfg->move_in_progress)
  send_cleanup_vector(cfg);

 return irq;
}
