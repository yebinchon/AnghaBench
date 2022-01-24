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
 int EINVAL ; 
 unsigned int IPIPE_NR_IRQS ; 
 unsigned int IPIPE_VIRQ_BASE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  __ipipe_virtual_irq_map ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ *) ; 

int FUNC5(unsigned irq)
{
	unsigned long flags;

#ifdef CONFIG_IPIPE_DEBUG
	if (irq >= IPIPE_NR_IRQS ||
	    (ipipe_virtual_irq_p(irq)
	     && !test_bit(irq - IPIPE_VIRQ_BASE, &__ipipe_virtual_irq_map)))
		return -EINVAL;
#endif

	FUNC3(flags);
	FUNC0(irq, NULL);
	FUNC2(flags);

	return 1;
}