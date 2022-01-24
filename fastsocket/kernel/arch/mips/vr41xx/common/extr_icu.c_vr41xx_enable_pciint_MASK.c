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
struct irq_desc {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ CPU_VR4122 ; 
 scalar_t__ CPU_VR4131 ; 
 scalar_t__ CPU_VR4133 ; 
 int /*<<< orphan*/  MPCIINTREG ; 
 int /*<<< orphan*/  PCIINT0 ; 
 int PCI_IRQ ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct irq_desc* irq_desc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(void)
{
	struct irq_desc *desc = irq_desc + PCI_IRQ;
	unsigned long flags;

	if (FUNC0() == CPU_VR4122 ||
	    FUNC0() == CPU_VR4131 ||
	    FUNC0() == CPU_VR4133) {
		FUNC2(&desc->lock, flags);
		FUNC1(MPCIINTREG, PCIINT0);
		FUNC3(&desc->lock, flags);
	}
}