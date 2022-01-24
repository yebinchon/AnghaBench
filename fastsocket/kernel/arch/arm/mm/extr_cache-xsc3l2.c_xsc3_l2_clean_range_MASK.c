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
 int CACHE_LINE_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 

__attribute__((used)) static void FUNC5(unsigned long start, unsigned long end)
{
	unsigned long vaddr, flags;

	vaddr = -1;  /* to force the first mapping */
	FUNC2(flags);

	start &= ~(CACHE_LINE_SIZE - 1);
	while (start < end) {
		vaddr = FUNC3(start, vaddr, flags);
		FUNC4(vaddr);
		start += CACHE_LINE_SIZE;
	}

	FUNC1(flags);

	FUNC0();
}