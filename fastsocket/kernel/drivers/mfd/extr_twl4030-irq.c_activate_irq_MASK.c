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
 int /*<<< orphan*/  IRQF_VALID ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static inline void FUNC2(int irq)
{
#ifdef CONFIG_ARM
	/* ARM requires an extra step to clear IRQ_NOREQUEST, which it
	 * sets on behalf of every irq_chip.  Also sets IRQ_NOPROBE.
	 */
	set_irq_flags(irq, IRQF_VALID);
#else
	/* same effect on other architectures */
	FUNC1(irq);
#endif
}