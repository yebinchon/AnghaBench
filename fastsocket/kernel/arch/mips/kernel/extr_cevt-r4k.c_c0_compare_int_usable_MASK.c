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
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 

int FUNC4(void)
{
	unsigned int delta;
	unsigned int cnt;

	/*
	 * IP7 already pending?  Try to clear it by acking the timer.
	 */
	if (FUNC0()) {
		FUNC3(FUNC2());
		FUNC1();
		if (FUNC0())
			return 0;
	}

	for (delta = 0x10; delta <= 0x400000; delta <<= 1) {
		cnt = FUNC2();
		cnt += delta;
		FUNC3(cnt);
		FUNC1();
		if ((int)(FUNC2() - cnt) < 0)
		    break;
		/* increase delta if the timer was already expired */
	}

	while ((int)(FUNC2() - cnt) <= 0)
		;	/* Wait for expiry  */

	FUNC1();
	if (!FUNC0())
		return 0;

	FUNC3(FUNC2());
	FUNC1();
	if (FUNC0())
		return 0;

	/*
	 * Feels like a real count / compare timer.
	 */
	return 1;
}