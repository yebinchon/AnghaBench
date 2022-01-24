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
struct TYPE_2__ {int tlbsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FLUSH_ITLB ; 
 int PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int FUNC2 (int) ; 
 TYPE_1__ current_cpu_data ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

void FUNC14(unsigned long start, unsigned long end)
{
	unsigned long size, flags;

	FUNC0(flags);
	size = (end - start + (PAGE_SIZE - 1)) >> PAGE_SHIFT;
	size = (size + 1) >> 1;
	if (size <= current_cpu_data.tlbsize / 2) {
		int pid = FUNC5();

		start &= (PAGE_MASK << 1);
		end += ((PAGE_SIZE << 1) - 1);
		end &= (PAGE_MASK << 1);

		while (start < end) {
			int idx;

			FUNC11(start);
			start += (PAGE_SIZE << 1);
			FUNC4();
			FUNC7();
			FUNC8();
			idx = FUNC6();
			FUNC12(0);
			FUNC13(0);
			if (idx < 0)
				continue;
			/* Make sure all entries differ. */
			FUNC11(FUNC2(idx));
			FUNC4();
			FUNC9();
		}
		FUNC10();
		FUNC11(pid);
	} else {
		FUNC3();
	}
	FLUSH_ITLB;
	FUNC1(flags);
}