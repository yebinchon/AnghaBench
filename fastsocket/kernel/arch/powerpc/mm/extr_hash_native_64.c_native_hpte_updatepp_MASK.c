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
struct hash_pte {unsigned long v; unsigned long r; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 unsigned long HPTE_R_C ; 
 unsigned long HPTE_R_N ; 
 unsigned long HPTE_R_PP ; 
 unsigned long HPTE_V_AVPN ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 unsigned long HPTE_V_VALID ; 
 unsigned long FUNC2 (unsigned long,int,int) ; 
 struct hash_pte* htab_address ; 
 int /*<<< orphan*/  FUNC3 (struct hash_pte*) ; 
 int /*<<< orphan*/  FUNC4 (struct hash_pte*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int,int,int) ; 

__attribute__((used)) static long FUNC6(unsigned long slot, unsigned long newpp,
				 unsigned long va, int psize, int ssize,
				 int local)
{
	struct hash_pte *hptep = htab_address + slot;
	unsigned long hpte_v, want_v;
	int ret = 0;

	want_v = FUNC2(va, psize, ssize);

	FUNC0("    update(va=%016lx, avpnv=%016lx, hash=%016lx, newpp=%x)",
		va, want_v & HPTE_V_AVPN, slot, newpp);

	FUNC3(hptep);

	hpte_v = hptep->v;

	/* Even if we miss, we need to invalidate the TLB */
	if (!FUNC1(hpte_v, want_v) || !(hpte_v & HPTE_V_VALID)) {
		FUNC0(" -> miss\n");
		ret = -1;
	} else {
		FUNC0(" -> hit\n");
		/* Update the HPTE */
		hptep->r = (hptep->r & ~(HPTE_R_PP | HPTE_R_N)) |
			(newpp & (HPTE_R_PP | HPTE_R_N | HPTE_R_C));
	}
	FUNC4(hptep);

	/* Ensure it is out of the tlb too. */
	FUNC5(va, psize, ssize, local);

	return ret;
}