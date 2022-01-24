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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  last_jiffy ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long tb_ticks_per_jiffy ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(void)
{
	unsigned long ticks;

	/*
	 * The timebase gets saved on sleep and restored on wakeup,
	 * so all we need to do is to reset the decrementer.
	 */
	ticks = FUNC2(FUNC0(last_jiffy));
	if (ticks < tb_ticks_per_jiffy)
		ticks = tb_ticks_per_jiffy - ticks;
	else
		ticks = 1;
	FUNC1(ticks);
}