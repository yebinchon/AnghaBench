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
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  current ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(unsigned int msecs, int intr)
{
	int timeout = FUNC0(msecs);

	do {
		FUNC2(intr ? TASK_INTERRUPTIBLE : TASK_UNINTERRUPTIBLE);
		timeout = FUNC1(timeout);
		if (intr) {
			int ret = FUNC3(current);

			if (ret)
				return ret;
		}
	} while (timeout);
	return 0;
}