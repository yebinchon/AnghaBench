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
typedef  int /*<<< orphan*/  cpu_set_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  errno ; 
 size_t FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 

int FUNC4(int cpu)
{
	cpu_set_t cmask;
	size_t n;
	int ret;

	n = FUNC2();

	if (cpu < 0 || cpu >= (int)n) {
		errno = EINVAL;
		return -1;
	}

	FUNC1(&cmask);
	FUNC0(cpu, &cmask);

	ret = FUNC3(0, n, &cmask);

	FUNC1(&cmask);

	return ret;
}