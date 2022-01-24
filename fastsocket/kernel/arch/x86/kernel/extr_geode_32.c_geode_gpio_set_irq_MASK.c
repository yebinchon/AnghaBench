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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_PIC_ZSEL_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 

void FUNC2(unsigned int group, unsigned int irq)
{
	u32 lo, hi;

	if (group > 7 || irq > 15)
		return;

	FUNC0(MSR_PIC_ZSEL_HIGH, lo, hi);

	lo &= ~(0xF << (group * 4));
	lo |= (irq & 0xF) << (group * 4);

	FUNC1(MSR_PIC_ZSEL_HIGH, lo, hi);
}