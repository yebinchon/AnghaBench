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
 int EINVAL ; 
 unsigned int PR_TSC_ENABLE ; 
 unsigned int PR_TSC_SIGSEGV ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

int FUNC2(unsigned int val)
{
	if (val == PR_TSC_SIGSEGV)
		FUNC0();
	else if (val == PR_TSC_ENABLE)
		FUNC1();
	else
		return -EINVAL;

	return 0;
}