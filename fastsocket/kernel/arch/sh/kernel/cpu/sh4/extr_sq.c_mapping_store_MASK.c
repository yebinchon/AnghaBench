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
typedef  int ssize_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  PAGE_SHARED ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned long,unsigned long,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,unsigned long*,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC5(const char *buf, size_t count)
{
	unsigned long base = 0, len = 0;

	FUNC4(buf, "%lx %lx", &base, &len);
	if (!base)
		return -EIO;

	if (FUNC0(len)) {
		int ret = FUNC2(base, len, "Userspace",
				   FUNC1(PAGE_SHARED));
		if (ret < 0)
			return ret;
	} else
		FUNC3(base);

	return count;
}