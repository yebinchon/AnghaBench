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
 scalar_t__ IRQ_CONTROL_REG_OFFSET ; 
 scalar_t__ OMAP_IH1_BASE ; 
 scalar_t__ OMAP_IH2_BASE ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC1(unsigned int irq)
{
	if (irq > 31)
		FUNC0(0x1, OMAP_IH2_BASE + IRQ_CONTROL_REG_OFFSET);

	FUNC0(0x1, OMAP_IH1_BASE + IRQ_CONTROL_REG_OFFSET);
}