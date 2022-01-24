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
 int KSEG1 ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int TLBSIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 long FUNC9 () ; 

void FUNC10(unsigned long start, unsigned long end)
{
	unsigned long flags;
	int size;

	FUNC3(flags);
	size = (end - start + (PAGE_SIZE - 1)) >> PAGE_SHIFT;
	if (size <= TLBSIZE) {
		int pid = FUNC5();

		start &= PAGE_MASK;
		end += PAGE_SIZE - 1;
		end &= PAGE_MASK;

		while (start < end) {
			long idx;

			FUNC6(start);
			start += PAGE_SIZE;
			FUNC7();
			idx = FUNC9();
			if (idx < 0)
				continue;
			FUNC4(0);
			FUNC6(KSEG1);
			FUNC0();
			FUNC8();
		}
		FUNC6(pid);
	} else {
		FUNC1();
	}

	FUNC2(flags);
}