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
 int /*<<< orphan*/  CVMX_IPD_CLK_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(void)
{
	unsigned long flags;
	unsigned loops = 2;

	/* Clobber loops so GCC will not unroll the following while loop. */
	asm("" : "+r" (loops));

	FUNC2(flags);
	/*
	 * Loop several times so we are executing from the cache,
	 * which should give more deterministic timing.
	 */
	while (loops--)
		FUNC3(FUNC0(CVMX_IPD_CLK_COUNT));
	FUNC1(flags);
}