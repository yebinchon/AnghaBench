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
struct page {unsigned long flags; } ;

/* Variables and functions */
 unsigned long PG_dcache_cpu_mask ; 
 unsigned long PG_dcache_cpu_shift ; 
 unsigned long PG_dcache_dirty ; 
 int /*<<< orphan*/  FUNC0 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 () ; 
 struct page* FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int) ; 

__attribute__((used)) static void FUNC6(unsigned long pfn)
{
	struct page *page;

	page = FUNC3(pfn);
	if (page) {
		unsigned long pg_flags;

		pg_flags = page->flags;
		if (pg_flags & (1UL << PG_dcache_dirty)) {
			int cpu = ((pg_flags >> PG_dcache_cpu_shift) &
				   PG_dcache_cpu_mask);
			int this_cpu = FUNC2();

			/* This is just to optimize away some function calls
			 * in the SMP case.
			 */
			if (cpu == this_cpu)
				FUNC1(page);
			else
				FUNC5(page, cpu);

			FUNC0(page, cpu);

			FUNC4();
		}
	}
}