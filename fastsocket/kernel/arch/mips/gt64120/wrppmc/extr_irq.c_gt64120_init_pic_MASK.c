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
 int /*<<< orphan*/  GT_HINTRCAUSE_OFS ; 
 int /*<<< orphan*/  GT_HINTRMASK_OFS ; 
 int /*<<< orphan*/  GT_INTRCAUSE_OFS ; 
 int /*<<< orphan*/  GT_INTRMASK_OFS ; 
 int /*<<< orphan*/  GT_PCI0_HICMASK_OFS ; 
 int /*<<< orphan*/  GT_PCI0_ICMASK_OFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

void FUNC1(void)
{
	/* clear CPU Interrupt Cause Registers */
	FUNC0(GT_INTRCAUSE_OFS, (0x1F << 21));
	FUNC0(GT_HINTRCAUSE_OFS, 0x00);

	/* Disable all interrupts from GT64120 bridge chip */
	FUNC0(GT_INTRMASK_OFS, 0x00);
	FUNC0(GT_HINTRMASK_OFS, 0x00);
	FUNC0(GT_PCI0_ICMASK_OFS, 0x00);
	FUNC0(GT_PCI0_HICMASK_OFS, 0x00);
}