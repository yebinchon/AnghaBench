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
typedef  int /*<<< orphan*/  uint16_t ;
struct irq_desc {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ CPU_VR4111 ; 
 scalar_t__ CPU_VR4121 ; 
 int KIU_IRQ ; 
 int /*<<< orphan*/  MKIUINTREG ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct irq_desc* irq_desc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(uint16_t mask)
{
	struct irq_desc *desc = irq_desc + KIU_IRQ;
	unsigned long flags;

	if (FUNC0() == CPU_VR4111 ||
	    FUNC0() == CPU_VR4121) {
		FUNC2(&desc->lock, flags);
		FUNC1(MKIUINTREG, mask);
		FUNC3(&desc->lock, flags);
	}
}