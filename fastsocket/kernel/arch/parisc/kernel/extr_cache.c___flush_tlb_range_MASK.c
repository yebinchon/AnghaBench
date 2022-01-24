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
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 scalar_t__ split_tlb ; 

void FUNC6(unsigned long sid, unsigned long start,
		       unsigned long end)
{
	unsigned long npages;

	npages = ((end - (start & PAGE_MASK)) + (PAGE_SIZE - 1)) >> PAGE_SHIFT;
	if (npages >= 512)  /* 2MB of space: arbitrary, should be tuned */
		FUNC0();
	else {
		unsigned long flags;

		FUNC1(sid, 1);
		FUNC5(flags);
		if (split_tlb) {
			while (npages--) {
				FUNC2(start);
				FUNC3(start);
				start += PAGE_SIZE;
			}
		} else {
			while (npages--) {
				FUNC2(start);
				start += PAGE_SIZE;
			}
		}
		FUNC4(flags);
	}
}