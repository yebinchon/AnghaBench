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
struct TYPE_2__ {unsigned long page_id; } ;
struct mm_struct {TYPE_1__ context; } ;

/* Variables and functions */
 int INVALID_PAGEID ; 
 unsigned long NO_CONTEXT ; 
 int NUM_TLB_ENTRIES ; 
 unsigned long FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RW_MM_TLB_HI ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  pid ; 
 int /*<<< orphan*/  rw_mm_tlb_hi ; 
 int /*<<< orphan*/  vpn ; 

void
FUNC7(struct mm_struct *mm)
{
	int i;
	int mmu;
	unsigned long flags;
	unsigned long page_id;
	unsigned long tlb_hi;
	unsigned long mmu_tlb_hi;

	page_id = mm->context.page_id;

	if (page_id == NO_CONTEXT)
		return;

	/* Mark the TLB entries that match the page_id as invalid. */
	FUNC6(flags);

	for (mmu = 1; mmu <= 2; mmu++) {
		FUNC1(mmu);
		for (i = 0; i < NUM_TLB_ENTRIES; i++) {
			FUNC4(i);

			/* Get the page_id */
			FUNC2(RW_MM_TLB_HI, tlb_hi);

			/* Check if the page_id match. */
			if ((tlb_hi & 0xff) == page_id) {
				mmu_tlb_hi = (FUNC0(mmu, rw_mm_tlb_hi, pid,
				                        INVALID_PAGEID)
				            | FUNC0(mmu, rw_mm_tlb_hi, vpn,
				                        i & 0xf));

				FUNC3(mmu_tlb_hi, 0);
			}
		}
	}

	FUNC5(flags);
}