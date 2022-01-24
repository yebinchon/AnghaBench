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
 unsigned long INVALID_P2M_ENTRY ; 
 unsigned int P2M_ENTRIES_PER_PAGE ; 
 scalar_t__ FUNC0 (unsigned long**,scalar_t__,unsigned long*) ; 
 scalar_t__ p2m_missing ; 
 unsigned long** p2m_top ; 
 unsigned int FUNC1 (unsigned long) ; 
 unsigned long* p2m_top_mfn ; 
 unsigned long FUNC2 (unsigned long*) ; 

bool FUNC3(unsigned long pfn, unsigned long *p)
{
	unsigned topidx = FUNC1(pfn);
	unsigned long **pfnp, *mfnp;
	unsigned i;

	pfnp = &p2m_top[topidx];
	mfnp = &p2m_top_mfn[topidx];

	for (i = 0; i < P2M_ENTRIES_PER_PAGE; i++)
		p[i] = INVALID_P2M_ENTRY;

	if (FUNC0(pfnp, p2m_missing, p) == p2m_missing) {
		*mfnp = FUNC2(p);
		return true;
	}

	return false;
}