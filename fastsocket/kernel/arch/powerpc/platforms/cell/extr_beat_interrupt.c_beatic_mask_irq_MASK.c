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
 unsigned long* beatic_irq_mask_enable ; 
 int /*<<< orphan*/  beatic_irq_mask_lock ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(unsigned int irq_plug)
{
	unsigned long flags;

	FUNC1(&beatic_irq_mask_lock, flags);
	beatic_irq_mask_enable[irq_plug/64] &= ~(1UL << (63 - (irq_plug%64)));
	FUNC0(irq_plug);
	FUNC2(&beatic_irq_mask_lock, flags);
}