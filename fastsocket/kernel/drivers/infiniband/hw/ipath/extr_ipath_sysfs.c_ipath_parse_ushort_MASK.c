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
 int /*<<< orphan*/  FUNC0 (char const) ; 
 unsigned long FUNC1 (char const*,char**,int /*<<< orphan*/ ) ; 

int FUNC2(const char *str, unsigned short *valp)
{
	unsigned long val;
	char *end;
	int ret;

	if (!FUNC0(str[0])) {
		ret = -EINVAL;
		goto bail;
	}

	val = FUNC1(str, &end, 0);

	if (val > 0xffff) {
		ret = -EINVAL;
		goto bail;
	}

	*valp = val;

	ret = end + 1 - str;
	if (ret == 0)
		ret = -EINVAL;

bail:
	return ret;
}