#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct uv_IO_APIC_route_entry {int /*<<< orphan*/  dest; scalar_t__ mask; scalar_t__ trigger; scalar_t__ polarity; int /*<<< orphan*/  dest_mode; int /*<<< orphan*/  delivery_mode; int /*<<< orphan*/  vector; } ;
struct irq_desc {int /*<<< orphan*/  status; } ;
struct irq_cfg {scalar_t__ move_in_progress; int /*<<< orphan*/  vector; } ;
struct cpumask {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* cpu_mask_to_apicid ) (struct cpumask const*) ;int /*<<< orphan*/  irq_dest_mode; int /*<<< orphan*/  irq_delivery_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_MOVE_PCNTXT ; 
 int /*<<< orphan*/  IRQ_NO_BALANCING ; 
 int UV_AFFINITY_CPU ; 
 TYPE_1__* apic ; 
 int FUNC1 (unsigned int,struct irq_cfg*,struct cpumask const*) ; 
 struct cpumask* FUNC2 (int) ; 
 int /*<<< orphan*/  handle_percpu_irq ; 
 struct irq_cfg* FUNC3 (unsigned int) ; 
 struct irq_desc* FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct irq_cfg*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct cpumask const*) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  uv_irq_chip ; 
 int /*<<< orphan*/  FUNC9 (int,unsigned long,unsigned long) ; 

__attribute__((used)) static int
FUNC10(char *irq_name, unsigned int irq, int cpu, int mmr_blade,
		       unsigned long mmr_offset, int limit)
{
	const struct cpumask *eligible_cpu = FUNC2(cpu);
	struct irq_desc *desc = FUNC4(irq);
	struct irq_cfg *cfg;
	int mmr_pnode;
	unsigned long mmr_value;
	struct uv_IO_APIC_route_entry *entry;
	int err;

	FUNC0(sizeof(struct uv_IO_APIC_route_entry) !=
			sizeof(unsigned long));

	cfg = FUNC3(irq);

	err = FUNC1(irq, cfg, eligible_cpu);
	if (err != 0)
		return err;

	if (limit == UV_AFFINITY_CPU)
		desc->status |= IRQ_NO_BALANCING;
	else
		desc->status |= IRQ_MOVE_PCNTXT;

	FUNC6(irq, &uv_irq_chip, handle_percpu_irq,
				      irq_name);

	mmr_value = 0;
	entry = (struct uv_IO_APIC_route_entry *)&mmr_value;
	entry->vector		= cfg->vector;
	entry->delivery_mode	= apic->irq_delivery_mode;
	entry->dest_mode	= apic->irq_dest_mode;
	entry->polarity		= 0;
	entry->trigger		= 0;
	entry->mask		= 0;
	entry->dest		= apic->cpu_mask_to_apicid(eligible_cpu);

	mmr_pnode = FUNC8(mmr_blade);
	FUNC9(mmr_pnode, mmr_offset, mmr_value);

	if (cfg->move_in_progress)
		FUNC5(cfg);

	return irq;
}