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
 int /*<<< orphan*/  MMUCR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 

void FUNC5(void)
{
	unsigned long flags, status;

	/*
	 * Flush all the TLB.
	 *
	 * Write to the MMU control register's bit:
	 *	TF-bit for SH-3, TI-bit for SH-4.
	 *      It's same position, bit #2.
	 */
	FUNC4(flags);
	status = FUNC1(MMUCR);
	status |= 0x04;
	FUNC2(status, MMUCR);
	FUNC0();
	FUNC3(flags);
}