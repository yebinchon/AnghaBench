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
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  l2_wt_override ; 

__attribute__((used)) static void FUNC4(unsigned long start, unsigned long end)
{
	start &= ~(CACHE_LINE_SIZE - 1);
	end = (end + CACHE_LINE_SIZE - 1) & ~(CACHE_LINE_SIZE - 1);
	while (start != end) {
		unsigned long range_end = FUNC0(start, end);
		if (!l2_wt_override)
			FUNC2(start, range_end - CACHE_LINE_SIZE);
		FUNC3(start, range_end - CACHE_LINE_SIZE);
		start = range_end;
	}

	FUNC1();
}