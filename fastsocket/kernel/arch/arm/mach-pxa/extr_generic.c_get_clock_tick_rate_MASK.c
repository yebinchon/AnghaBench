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
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 

unsigned long FUNC2(void)
{
	unsigned long clock_tick_rate;

	if (FUNC0())
		clock_tick_rate = 3686400;
	else if (FUNC1())
		clock_tick_rate = 3249600;
	else
		clock_tick_rate = 3250000;

	return clock_tick_rate;
}