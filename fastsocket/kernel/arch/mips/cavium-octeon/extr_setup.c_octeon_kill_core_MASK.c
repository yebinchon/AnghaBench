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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static void FUNC5(void *arg)
{
	FUNC3();
	if (FUNC4()) {
		/* The simulator needs the watchdog to stop for dead cores */
		FUNC2(FUNC0(FUNC1()), 0);
		/* A break instruction causes the simulator stop a core */
		asm volatile ("sync\nbreak");
	}
}