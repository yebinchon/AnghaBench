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
 int /*<<< orphan*/  boot_cpu_id ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int,int) ; 
 unsigned int nr_irqs_gsi ; 

int FUNC2(void)
{
	int node = FUNC0(boot_cpu_id);
	unsigned int irq_want;
	int irq;

	irq_want = nr_irqs_gsi;
	irq = FUNC1(irq_want, node);

	if (irq == 0)
		irq = -1;

	return irq;
}