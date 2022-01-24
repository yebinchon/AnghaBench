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
struct uv_IO_APIC_route_entry {unsigned int dest; scalar_t__ mask; scalar_t__ trigger; scalar_t__ polarity; int /*<<< orphan*/  dest_mode; int /*<<< orphan*/  delivery_mode; int /*<<< orphan*/  vector; } ;
struct irq_desc {struct irq_cfg* chip_data; } ;
struct irq_cfg {scalar_t__ move_in_progress; int /*<<< orphan*/  vector; } ;
struct cpumask {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq_dest_mode; int /*<<< orphan*/  irq_delivery_mode; } ;

/* Variables and functions */
 TYPE_1__* apic ; 
 struct irq_desc* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_cfg*) ; 
 scalar_t__ FUNC2 (struct irq_desc*,struct cpumask const*,unsigned int*) ; 
 scalar_t__ FUNC3 (unsigned int,unsigned long*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(unsigned int irq, const struct cpumask *mask)
{
	struct irq_desc *desc = FUNC0(irq);
	struct irq_cfg *cfg = desc->chip_data;
	unsigned int dest;
	unsigned long mmr_value;
	struct uv_IO_APIC_route_entry *entry;
	unsigned long mmr_offset;
	int mmr_pnode;

	if (FUNC2(desc, mask, &dest))
		return -1;

	mmr_value = 0;
	entry = (struct uv_IO_APIC_route_entry *)&mmr_value;

	entry->vector		= cfg->vector;
	entry->delivery_mode	= apic->irq_delivery_mode;
	entry->dest_mode	= apic->irq_dest_mode;
	entry->polarity		= 0;
	entry->trigger		= 0;
	entry->mask		= 0;
	entry->dest		= dest;

	/* Get previously stored MMR and pnode of hub sourcing interrupts */
	if (FUNC3(irq, &mmr_offset, &mmr_pnode))
		return -1;

	FUNC4(mmr_pnode, mmr_offset, mmr_value);

	if (cfg->move_in_progress)
		FUNC1(cfg);

	return 0;
}