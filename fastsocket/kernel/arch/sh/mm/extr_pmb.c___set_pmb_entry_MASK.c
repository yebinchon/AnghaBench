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
 int ENOSPC ; 
 unsigned int NR_PMB_ENTRIES ; 
 unsigned long PMB_C ; 
 unsigned int PMB_NO_ENTRY ; 
 unsigned long PMB_V ; 
 unsigned long PMB_WT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  pmb_map ; 
 scalar_t__ FUNC5 (unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(unsigned long vpn, unsigned long ppn,
		    unsigned long flags, int *entry)
{
	unsigned int pos = *entry;

	if (FUNC6(pos == PMB_NO_ENTRY))
		pos = FUNC1(&pmb_map, NR_PMB_ENTRIES);

repeat:
	if (FUNC6(pos > NR_PMB_ENTRIES))
		return -ENOSPC;

	if (FUNC5(pos, &pmb_map)) {
		pos = FUNC1(&pmb_map, NR_PMB_ENTRIES);
		goto repeat;
	}

	FUNC0(vpn | PMB_V, FUNC3(pos));

#ifdef CONFIG_CACHE_WRITETHROUGH
	/*
	 * When we are in 32-bit address extended mode, CCR.CB becomes
	 * invalid, so care must be taken to manually adjust cacheable
	 * translations.
	 */
	if (likely(flags & PMB_C))
		flags |= PMB_WT;
#endif

	FUNC0(ppn | flags | PMB_V, FUNC4(pos));

	*entry = pos;

	return 0;
}