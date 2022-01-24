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
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ signals_enabled ; 

void FUNC1(void)
{
	signals_enabled = 0;
	/*
	 * This must return with signals disabled, so this barrier
	 * ensures that writes are flushed out before the return.
	 * This might matter if gcc figures out how to inline this and
	 * decides to shuffle this code into the caller.
	 */
	FUNC0();
}