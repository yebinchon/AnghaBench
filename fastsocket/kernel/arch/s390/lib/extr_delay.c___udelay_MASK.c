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
 int /*<<< orphan*/  FUNC0 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (unsigned long) ; 

void FUNC11(unsigned long long usecs)
{
	unsigned long flags;

	FUNC8();
	FUNC7(flags);
	if (FUNC3()) {
		FUNC0(usecs);
		goto out;
	}
	if (FUNC4()) {
		if (FUNC10(flags))
			FUNC0(usecs);
		else
			FUNC1(usecs);
		goto out;
	}
	if (FUNC10(flags)) {
		FUNC5();
		FUNC0(usecs);
		FUNC2();
		goto out;
	}
	FUNC1(usecs);
out:
	FUNC6(flags);
	FUNC9();
}