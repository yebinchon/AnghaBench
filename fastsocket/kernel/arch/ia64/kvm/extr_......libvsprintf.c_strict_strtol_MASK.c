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
 int FUNC0 (char const*,unsigned int,unsigned long*) ; 

int FUNC1(const char *cp, unsigned int base, long *res)
{
	int ret;
	if (*cp == '-') {
		ret = FUNC0(cp + 1, base, (unsigned long *)res);
		if (!ret)
			*res = -(*res);
	} else {
		ret = FUNC0(cp, base, (unsigned long *)res);
	}

	return ret;
}