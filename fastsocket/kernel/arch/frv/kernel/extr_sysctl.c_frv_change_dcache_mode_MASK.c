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
 unsigned long HSR0_CBM ; 
 unsigned long HSR0_DCE ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static void FUNC4(unsigned long newmode)
{
	unsigned long flags, hsr0;

	FUNC3(flags);

	hsr0 = FUNC0(0);
	hsr0 &= ~HSR0_DCE;
	FUNC1(0, hsr0);

	asm volatile("	dcef	@(gr0,gr0),#1	\n"
		     "	membar			\n"
		     : : : "memory"
		     );

	hsr0 = (hsr0 & ~HSR0_CBM) | newmode;
	FUNC1(0, hsr0);
	hsr0 |= HSR0_DCE;
	FUNC1(0, hsr0);

	FUNC2(flags);

	//printk("HSR0 now %08lx\n", hsr0);
}