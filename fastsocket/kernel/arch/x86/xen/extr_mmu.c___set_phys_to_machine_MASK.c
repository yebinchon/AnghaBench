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
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long INVALID_P2M_ENTRY ; 
 int /*<<< orphan*/  XENFEAT_auto_translated_physmap ; 
 unsigned int FUNC1 (unsigned long) ; 
 unsigned long* p2m_missing ; 
 unsigned long** p2m_top ; 
 unsigned int FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned long xen_max_p2m_pfn ; 

bool FUNC5(unsigned long pfn, unsigned long mfn)
{
	unsigned topidx, idx;

	if (FUNC3(FUNC4(XENFEAT_auto_translated_physmap))) {
		FUNC0(pfn != mfn && mfn != INVALID_P2M_ENTRY);
		return true;
	}

	if (FUNC3(pfn >= xen_max_p2m_pfn)) {
		FUNC0(mfn != INVALID_P2M_ENTRY);
		return true;
	}

	topidx = FUNC2(pfn);
	if (p2m_top[topidx] == p2m_missing) {
		if (mfn == INVALID_P2M_ENTRY)
			return true;
		return false;
	}

	idx = FUNC1(pfn);
	p2m_top[topidx][idx] = mfn;

	return true;
}