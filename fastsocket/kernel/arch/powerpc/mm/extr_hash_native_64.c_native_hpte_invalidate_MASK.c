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
struct hash_pte {unsigned long v; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 unsigned long HPTE_V_VALID ; 
 unsigned long FUNC2 (unsigned long,int,int) ; 
 struct hash_pte* htab_address ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct hash_pte*) ; 
 int /*<<< orphan*/  FUNC6 (struct hash_pte*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,int,int,int) ; 

__attribute__((used)) static void FUNC8(unsigned long slot, unsigned long va,
				   int psize, int ssize, int local)
{
	struct hash_pte *hptep = htab_address + slot;
	unsigned long hpte_v;
	unsigned long want_v;
	unsigned long flags;

	FUNC4(flags);

	FUNC0("    invalidate(va=%016lx, hash: %x)\n", va, slot);

	want_v = FUNC2(va, psize, ssize);
	FUNC5(hptep);
	hpte_v = hptep->v;

	/* Even if we miss, we need to invalidate the TLB */
	if (!FUNC1(hpte_v, want_v) || !(hpte_v & HPTE_V_VALID))
		FUNC6(hptep);
	else
		/* Invalidate the hpte. NOTE: this also unlocks it */
		hptep->v = 0;

	/* Invalidate the TLB */
	FUNC7(va, psize, ssize, local);

	FUNC3(flags);
}