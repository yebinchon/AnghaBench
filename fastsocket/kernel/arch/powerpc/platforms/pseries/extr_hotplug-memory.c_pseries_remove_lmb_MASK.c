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
struct zone {int dummy; } ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 int FUNC0 (struct zone*,unsigned long,unsigned int) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned int) ; 
 struct zone* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int FUNC6 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(unsigned long base, unsigned int lmb_size)
{
	unsigned long start, start_pfn;
	struct zone *zone;
	int ret;

	start_pfn = base >> PAGE_SHIFT;

	if (!FUNC5(start_pfn)) {
		FUNC2(base, lmb_size);
		return 0;
	}

	zone = FUNC3(FUNC4(start_pfn));

	/*
	 * Remove section mappings and sysfs entries for the
	 * section of the memory we are removing.
	 *
	 * NOTE: Ideally, this should be done in generic code like
	 * remove_memory(). But remove_memory() gets called by writing
	 * to sysfs "state" file and we can't remove sysfs entries
	 * while writing to it. So we have to defer it to here.
	 */
	ret = FUNC0(zone, start_pfn, lmb_size >> PAGE_SHIFT);
	if (ret)
		return ret;

	/*
	 * Update memory regions for memory remove
	 */
	FUNC2(base, lmb_size);

	/*
	 * Remove htab bolted mappings for this section of memory
	 */
	start = (unsigned long)FUNC1(base);
	ret = FUNC6(start, start + lmb_size);

	/* Ensure all vmalloc mappings are flushed in case they also
	 * hit that section of memory
	 */
	FUNC7();

	return ret;
}