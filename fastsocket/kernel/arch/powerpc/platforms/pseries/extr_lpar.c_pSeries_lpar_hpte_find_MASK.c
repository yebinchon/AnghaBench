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
 unsigned long HPTE_V_VALID ; 
 unsigned long FUNC1 (unsigned long,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC2 (unsigned long,int,int) ; 
 unsigned long htab_hash_mask ; 
 TYPE_1__* mmu_psize_defs ; 
 unsigned long FUNC3 (long) ; 

__attribute__((used)) static long FUNC4(unsigned long va, int psize, int ssize)
{
	unsigned long hash;
	unsigned long i;
	long slot;
	unsigned long want_v, hpte_v;

	hash = FUNC1(va, mmu_psize_defs[psize].shift, ssize);
	want_v = FUNC2(va, psize, ssize);

	/* Bolted entries are always in the primary group */
	slot = (hash & htab_hash_mask) * HPTES_PER_GROUP;
	for (i = 0; i < HPTES_PER_GROUP; i++) {
		hpte_v = FUNC3(slot);

		if (FUNC0(hpte_v, want_v) && (hpte_v & HPTE_V_VALID))
			/* HPTE matches */
			return slot;
		++slot;
	}

	return -1;
}