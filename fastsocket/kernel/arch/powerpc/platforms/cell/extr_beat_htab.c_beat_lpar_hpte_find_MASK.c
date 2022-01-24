#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  shift; } ;

/* Variables and functions */
 unsigned long HPTES_PER_GROUP ; 
 scalar_t__ FUNC0 (unsigned long,unsigned long) ; 
 unsigned long HPTE_V_SECONDARY ; 
 unsigned long HPTE_V_VALID ; 
 int /*<<< orphan*/  MMU_SEGSIZE_256M ; 
 unsigned long FUNC1 (long) ; 
 unsigned long FUNC2 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (unsigned long,int,int /*<<< orphan*/ ) ; 
 unsigned long htab_hash_mask ; 
 TYPE_1__* mmu_psize_defs ; 

__attribute__((used)) static long FUNC4(unsigned long va, int psize)
{
	unsigned long hash;
	unsigned long i, j;
	long slot;
	unsigned long want_v, hpte_v;

	hash = FUNC2(va, mmu_psize_defs[psize].shift, MMU_SEGSIZE_256M);
	want_v = FUNC3(va, psize, MMU_SEGSIZE_256M);

	for (j = 0; j < 2; j++) {
		slot = (hash & htab_hash_mask) * HPTES_PER_GROUP;
		for (i = 0; i < HPTES_PER_GROUP; i++) {
			hpte_v = FUNC1(slot);

			if (FUNC0(hpte_v, want_v)
			    && (hpte_v & HPTE_V_VALID)
			    && (!!(hpte_v & HPTE_V_SECONDARY) == j)) {
				/* HPTE matches */
				if (j)
					slot = -slot;
				return slot;
			}
			++slot;
		}
		hash = ~hash;
	}

	return -1;
}