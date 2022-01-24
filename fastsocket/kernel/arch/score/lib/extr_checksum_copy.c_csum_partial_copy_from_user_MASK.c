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
 int EFAULT ; 
 int FUNC0 (char*,char const*,int) ; 
 unsigned int FUNC1 (char*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

unsigned int FUNC3(const char *src, char *dst,
					int len, unsigned int sum,
					int *err_ptr)
{
	int missing;

	missing = FUNC0(dst, src, len);
	if (missing) {
		FUNC2(dst + len - missing, 0, missing);
		*err_ptr = -EFAULT;
	}

	return FUNC1(dst, len, sum);
}