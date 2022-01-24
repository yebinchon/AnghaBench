#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t size; unsigned int* revmap; } ;
struct TYPE_4__ {TYPE_1__ linear; } ;
struct irq_host {scalar_t__ revmap_type; TYPE_2__ revmap_data; } ;
typedef  size_t irq_hw_number_t ;

/* Variables and functions */
 scalar_t__ IRQ_HOST_MAP_LINEAR ; 
 unsigned int NO_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (struct irq_host*,size_t) ; 
 scalar_t__ FUNC2 (int) ; 

unsigned int FUNC3(struct irq_host *host,
			       irq_hw_number_t hwirq)
{
	unsigned int *revmap;

	FUNC0(host->revmap_type != IRQ_HOST_MAP_LINEAR);

	/* Check revmap bounds */
	if (FUNC2(hwirq >= host->revmap_data.linear.size))
		return FUNC1(host, hwirq);

	/* Check if revmap was allocated */
	revmap = host->revmap_data.linear.revmap;
	if (FUNC2(revmap == NULL))
		return FUNC1(host, hwirq);

	/* Fill up revmap with slow path if no mapping found */
	if (FUNC2(revmap[hwirq] == NO_IRQ))
		revmap[hwirq] = FUNC1(host, hwirq);

	return revmap[hwirq];
}