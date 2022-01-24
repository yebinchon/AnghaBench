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
 unsigned long HPTES_PER_GROUP ; 
 unsigned long HPTE_V_VALID ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hash_pte*,unsigned long,int*,int*,unsigned long*) ; 
 struct hash_pte* htab_address ; 
 int htab_hash_mask ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  native_tlbie_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void)
{
	unsigned long slot, slots, flags;
	struct hash_pte *hptep = htab_address;
	unsigned long hpte_v, va;
	unsigned long pteg_count;
	int psize, ssize;

	pteg_count = htab_hash_mask + 1;

	FUNC3(flags);

	/* we take the tlbie lock and hold it.  Some hardware will
	 * deadlock if we try to tlbie from two processors at once.
	 */
	FUNC4(&native_tlbie_lock);

	slots = pteg_count * HPTES_PER_GROUP;

	for (slot = 0; slot < slots; slot++, hptep++) {
		/*
		 * we could lock the pte here, but we are the only cpu
		 * running,  right?  and for crash dump, we probably
		 * don't want to wait for a maybe bad cpu.
		 */
		hpte_v = hptep->v;

		/*
		 * Call __tlbie() here rather than tlbie() since we
		 * already hold the native_tlbie_lock.
		 */
		if (hpte_v & HPTE_V_VALID) {
			FUNC1(hptep, slot, &psize, &ssize, &va);
			hptep->v = 0;
			FUNC0(va, psize, ssize);
		}
	}

	asm volatile("eieio; tlbsync; ptesync":::"memory");
	FUNC5(&native_tlbie_lock);
	FUNC2(flags);
}