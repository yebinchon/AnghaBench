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

/* Variables and functions */
 int ENOSPC ; 
 int NR_IRQS ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  irq_map ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 

int FUNC2(void)
{
	int irq;

again:
	irq = FUNC0(irq_map, NR_IRQS);

	if (irq >= NR_IRQS)
		return -ENOSPC;

	if (FUNC1(irq, irq_map))
		goto again;

	return irq;
}