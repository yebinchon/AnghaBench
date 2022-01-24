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
struct tsb {int dummy; } ;
struct mmu_gather {unsigned long tlb_nr; unsigned long* vaddrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 unsigned long FUNC1 (unsigned long,unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct mmu_gather *mp, unsigned long hash_shift, unsigned long tsb, unsigned long nentries)
{
	unsigned long i;

	for (i = 0; i < mp->tlb_nr; i++) {
		unsigned long v = mp->vaddrs[i];
		unsigned long tag, ent, hash;

		v &= ~0x1UL;

		hash = FUNC1(v, hash_shift, nentries);
		ent = tsb + (hash * sizeof(struct tsb));
		tag = (v >> 22UL);

		FUNC0(ent, tag);
	}
}