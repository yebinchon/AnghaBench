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
struct TYPE_2__ {int /*<<< orphan*/  tree; } ;
struct irq_host {scalar_t__ revmap_type; TYPE_1__ revmap_data; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 scalar_t__ IRQ_HOST_MAP_TREE ; 
 unsigned int NO_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * irq_map ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int revmap_trees_allocated ; 
 int /*<<< orphan*/  revmap_trees_mutex ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct irq_host *host, unsigned int virq,
			     irq_hw_number_t hwirq)
{

	FUNC0(host->revmap_type != IRQ_HOST_MAP_TREE);

	/*
	 * Check if the radix tree exists yet.
	 * If not, then the irq will be inserted into the tree when it gets
	 * initialized.
	 */
	FUNC4();
	if (revmap_trees_allocated < 1)
		return;

	if (virq != NO_IRQ) {
		FUNC1(&revmap_trees_mutex);
		FUNC3(&host->revmap_data.tree, hwirq,
				  &irq_map[virq]);
		FUNC2(&revmap_trees_mutex);
	}
}