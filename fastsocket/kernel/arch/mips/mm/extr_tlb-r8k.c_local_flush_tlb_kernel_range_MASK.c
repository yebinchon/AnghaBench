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
 unsigned long CKSEG0 ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int TFP_TLB_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 long FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 

void FUNC9(unsigned long start, unsigned long end)
{
	unsigned long size, flags;

	size = (end - start + (PAGE_SIZE - 1)) >> PAGE_SHIFT;
	size = (size + 1) >> 1;

	if (size > TFP_TLB_SIZE / 2) {
		FUNC0();
		return;
	}

	FUNC2(flags);

	FUNC7(0);

	start &= PAGE_MASK;
	end += (PAGE_SIZE - 1);
	end &= PAGE_MASK;
	while (start < end) {
		signed long idx;

		FUNC8(start);
		FUNC6(start);
		start += PAGE_SIZE;
		FUNC4();
		idx = FUNC3();
		if (idx < 0)
			continue;

		FUNC6(CKSEG0 + (idx << (PAGE_SHIFT + 1)));
		FUNC5();
	}

	FUNC1(flags);
}