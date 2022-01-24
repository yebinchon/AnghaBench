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
typedef  unsigned long u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 unsigned long HPTE_V_BOLTED ; 
 unsigned long HPTE_V_SECONDARY ; 
 unsigned long HPTE_V_VALID ; 
 int /*<<< orphan*/  MMU_SEGSIZE_256M ; 
 unsigned long _PAGE_COHERENT ; 
 unsigned long _PAGE_NO_CACHE ; 
 int /*<<< orphan*/  beat_htab_lock ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long*) ; 
 unsigned long FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (unsigned long,int) ; 
 unsigned long FUNC4 (unsigned long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static long FUNC8(unsigned long hpte_group,
				  unsigned long va, unsigned long pa,
				  unsigned long rflags, unsigned long vflags,
				  int psize, int ssize)
{
	unsigned long lpar_rc;
	u64 hpte_v, hpte_r, slot;

	/* same as iseries */
	if (vflags & HPTE_V_SECONDARY)
		return -1;

	if (!(vflags & HPTE_V_BOLTED))
		FUNC0("hpte_insert(group=%lx, va=%016lx, pa=%016lx, "
			"rflags=%lx, vflags=%lx, psize=%d)\n",
		hpte_group, va, pa, rflags, vflags, psize);

	hpte_v = FUNC4(va, psize, MMU_SEGSIZE_256M) |
		vflags | HPTE_V_VALID;
	hpte_r = FUNC3(pa, psize) | rflags;

	if (!(vflags & HPTE_V_BOLTED))
		FUNC0(" hpte_v=%016lx, hpte_r=%016lx\n", hpte_v, hpte_r);

	if (rflags & _PAGE_NO_CACHE)
		hpte_r &= ~_PAGE_COHERENT;

	FUNC5(&beat_htab_lock);
	lpar_rc = FUNC2(hpte_group);
	if (lpar_rc == 0) {
		if (!(vflags & HPTE_V_BOLTED))
			FUNC0(" full\n");
		FUNC6(&beat_htab_lock);
		return -1;
	}

	lpar_rc = FUNC1(0, hpte_group, lpar_rc << 48,
		hpte_v, hpte_r, &slot);
	FUNC6(&beat_htab_lock);

	/*
	 * Since we try and ioremap PHBs we don't own, the pte insert
	 * will fail. However we must catch the failure in hash_page
	 * or we will loop forever, so return -2 in this case.
	 */
	if (FUNC7(lpar_rc != 0)) {
		if (!(vflags & HPTE_V_BOLTED))
			FUNC0(" lpar err %lx\n", lpar_rc);
		return -2;
	}
	if (!(vflags & HPTE_V_BOLTED))
		FUNC0(" -> slot: %lx\n", slot);

	/* We have to pass down the secondary bucket bit here as well */
	return (slot ^ hpte_group) & 15;
}