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
 int LATCH ; 
 int /*<<< orphan*/  TC2D ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int tick_nsec ; 

__attribute__((used)) static unsigned long FUNC1(void)
{
	unsigned long hwticks;
	hwticks = LATCH - (FUNC0(TC2D) & 0xffff);	/* since last underflow */
	return (hwticks * (tick_nsec / 1000)) / LATCH;
}