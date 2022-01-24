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
 int FUNC0 (unsigned int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*,int) ; 

int FUNC2(unsigned int *pin_list, unsigned count,
		const char *label)
{
	unsigned int *p = pin_list;
	int i;
	int ret = -EINVAL;

	for (i = 0; i < count; i++) {
		ret = FUNC0(*p, label);
		if (ret)
			goto setup_error;
		p++;
	}
	return 0;

setup_error:
	FUNC1(pin_list, i);
	return ret;
}