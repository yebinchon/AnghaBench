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
typedef  int /*<<< orphan*/  __wsum ;

/* Variables and functions */
 int EFAULT ; 
 int FUNC0 (void*,void const*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 

__wsum FUNC3(const void *src, void *dst,
				   int len, __wsum sum,
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