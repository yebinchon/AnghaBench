#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct irq_host {scalar_t__ revmap_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IRQ_HOST_MAP_NOMAP ; 
 unsigned int NO_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int FUNC2 (struct irq_host*,int,int /*<<< orphan*/ ) ; 
 struct irq_host* irq_default_host ; 
 scalar_t__ FUNC3 (struct irq_host*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

unsigned int FUNC5(struct irq_host *host)
{
	unsigned int virq;

	if (host == NULL)
		host = irq_default_host;

	FUNC0(host == NULL);
	FUNC1(host->revmap_type != IRQ_HOST_MAP_NOMAP);

	virq = FUNC2(host, 1, 0);
	if (virq == NO_IRQ) {
		FUNC4("irq: create_direct virq allocation failed\n");
		return NO_IRQ;
	}

	FUNC4("irq: create_direct obtained virq %d\n", virq);

	if (FUNC3(host, virq, virq))
		return NO_IRQ;

	return virq;
}