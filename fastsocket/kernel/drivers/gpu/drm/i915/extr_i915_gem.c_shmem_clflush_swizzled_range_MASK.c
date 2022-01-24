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
 int /*<<< orphan*/  FUNC0 (char*,unsigned long) ; 
 unsigned long FUNC1 (unsigned long,int) ; 
 unsigned long FUNC2 (unsigned long,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(char *addr, unsigned long length,
			     bool swizzled)
{
	if (FUNC3(swizzled)) {
		unsigned long start = (unsigned long) addr;
		unsigned long end = (unsigned long) addr + length;

		/* For swizzling simply ensure that we always flush both
		 * channels. Lame, but simple and it works. Swizzled
		 * pwrite/pread is far from a hotpath - current userspace
		 * doesn't use it at all. */
		start = FUNC1(start, 128);
		end = FUNC2(end, 128);

		FUNC0((void *)start, end - start);
	} else {
		FUNC0(addr, length);
	}

}