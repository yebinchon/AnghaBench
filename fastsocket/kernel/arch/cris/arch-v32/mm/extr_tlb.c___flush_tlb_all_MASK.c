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
 int INVALID_PAGEID ; 
 int NUM_TLB_ENTRIES ; 
 unsigned long FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RW_MM_TLB_HI ; 
 int /*<<< orphan*/  RW_MM_TLB_LO ; 
 int /*<<< orphan*/  RW_MM_TLB_SEL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  idx ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  pid ; 
 int /*<<< orphan*/  rw_mm_tlb_hi ; 
 int /*<<< orphan*/  rw_mm_tlb_sel ; 
 int /*<<< orphan*/  vpn ; 

void
FUNC5(void)
{
	int i;
	int mmu;
	unsigned long flags;
	unsigned long mmu_tlb_hi;
	unsigned long mmu_tlb_sel;

	/*
	 * Mask with 0xf so similar TLB entries aren't written in the same 4-way
	 * entry group.
	 */
	FUNC4(flags);

	for (mmu = 1; mmu <= 2; mmu++) {
		FUNC1(mmu); /* Select the MMU */
		for (i = 0; i < NUM_TLB_ENTRIES; i++) {
			/* Store invalid entry */
			mmu_tlb_sel = FUNC0(mmu, rw_mm_tlb_sel, idx, i);

			mmu_tlb_hi = (FUNC0(mmu, rw_mm_tlb_hi, pid, INVALID_PAGEID)
				    | FUNC0(mmu, rw_mm_tlb_hi, vpn, i & 0xf));

			FUNC2(RW_MM_TLB_SEL, mmu_tlb_sel);
			FUNC2(RW_MM_TLB_HI, mmu_tlb_hi);
			FUNC2(RW_MM_TLB_LO, 0);
		}
	}

	FUNC3(flags);
}