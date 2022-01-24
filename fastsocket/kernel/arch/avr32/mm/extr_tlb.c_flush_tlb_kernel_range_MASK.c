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
 int MMU_DTLB_ENTRIES ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned long FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 

void FUNC5(unsigned long start, unsigned long end)
{
	unsigned long flags;
	int size;

	size = (end - start + (PAGE_SIZE - 1)) >> PAGE_SHIFT;
	if (size > (MMU_DTLB_ENTRIES / 4)) { /* Too many entries to flush */
		FUNC1();
	} else {
		unsigned long asid;

		FUNC4(flags);
		asid = FUNC2();

		start &= PAGE_MASK;
		end += (PAGE_SIZE - 1);
		end &= PAGE_MASK;

		while (start < end) {
			FUNC0(asid, start);
			start += PAGE_SIZE;
		}
		FUNC3(flags);
	}
}