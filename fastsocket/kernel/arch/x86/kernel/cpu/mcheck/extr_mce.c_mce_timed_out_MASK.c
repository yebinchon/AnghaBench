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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 scalar_t__ SPINUNIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int cpu_missing ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mce_paniced ; 
 int /*<<< orphan*/  monarch_timeout ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int tolerant ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(u64 *t)
{
	/*
	 * The others already did panic for some reason.
	 * Bail out like in a timeout.
	 * rmb() to tell the compiler that system_state
	 * might have been modified by someone else.
	 */
	FUNC2();
	if (FUNC0(&mce_paniced))
		FUNC4();
	if (!monarch_timeout)
		goto out;
	if ((s64)*t < SPINUNIT) {
		/* CHECKME: Make panic default for 1 too? */
		if (tolerant < 1)
			FUNC1("Timeout synchronizing machine check over CPUs",
				  NULL, NULL);
		cpu_missing = 1;
		return 1;
	}
	*t -= SPINUNIT;
out:
	FUNC3();
	return 0;
}