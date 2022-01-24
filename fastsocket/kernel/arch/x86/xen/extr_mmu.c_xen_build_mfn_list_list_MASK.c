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
 unsigned int FUNC0 (void**) ; 
 unsigned int MAX_DOMAIN_PAGES ; 
 unsigned int P2M_ENTRIES_PER_PAGE ; 
 void*** p2m_top ; 
 unsigned int FUNC1 (unsigned int) ; 
 void** p2m_top_mfn ; 
 void** p2m_top_mfn_list ; 
 void* FUNC2 (void**) ; 

void FUNC3(void)
{
	unsigned pfn, idx;

	for (pfn = 0; pfn < MAX_DOMAIN_PAGES; pfn += P2M_ENTRIES_PER_PAGE) {
		unsigned topidx = FUNC1(pfn);

		p2m_top_mfn[topidx] = FUNC2(p2m_top[topidx]);
	}

	for (idx = 0; idx < FUNC0(p2m_top_mfn_list); idx++) {
		unsigned topidx = idx * P2M_ENTRIES_PER_PAGE;
		p2m_top_mfn_list[idx] = FUNC2(&p2m_top_mfn[topidx]);
	}
}