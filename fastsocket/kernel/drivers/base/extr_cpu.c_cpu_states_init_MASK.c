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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * cpu_state_attr ; 
 int /*<<< orphan*/  cpu_sysdev_class ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(void)
{
	int i;
	int err = 0;

	for (i = 0;  i < FUNC0(cpu_state_attr); i++) {
		int ret;
		ret = FUNC1(&cpu_sysdev_class,
						cpu_state_attr[i]);
		if (!err)
			err = ret;
	}
	return err;
}