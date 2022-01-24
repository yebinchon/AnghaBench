#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned long tlbsize; } ;

/* Variables and functions */
 int KSEG0 ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 TYPE_1__ current_cpu_data ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,unsigned long) ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(unsigned long start, unsigned long end)
{
	unsigned long size, flags;

#ifdef DEBUG_TLB
	printk("[tlbrange<%lu,0x%08lx,0x%08lx>]", start, end);
#endif
	FUNC2(flags);
	size = (end - start + (PAGE_SIZE - 1)) >> PAGE_SHIFT;
	if (size <= current_cpu_data.tlbsize) {
		int pid = FUNC4();

		start &= PAGE_MASK;
		end += PAGE_SIZE - 1;
		end &= PAGE_MASK;

		while (start < end) {
			int idx;

			FUNC8(start);
			start += PAGE_SIZE;		/* BARRIER */
			FUNC6();
			idx = FUNC5();
			FUNC9(0);
			FUNC8(KSEG0);
			if (idx < 0)			/* BARRIER */
				continue;
			FUNC7();
		}
		FUNC8(pid);
	} else {
		FUNC0();
	}
	FUNC1(flags);
}