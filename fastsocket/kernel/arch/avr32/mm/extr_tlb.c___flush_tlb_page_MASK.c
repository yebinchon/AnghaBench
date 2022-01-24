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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  DRP ; 
 int /*<<< orphan*/  MMUCR ; 
 int /*<<< orphan*/  MMUCR_N ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLBARLO ; 
 int /*<<< orphan*/  TLBEHI ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(unsigned long asid, unsigned long page)
{
	u32 mmucr, tlbehi;

	/*
	 * Caller is responsible for masking out non-PFN bits in page
	 * and changing the current ASID if necessary. This means that
	 * we don't need to flush the pipeline after writing TLBEHI.
	 */
	tlbehi = page | asid;
	FUNC5(TLBEHI, tlbehi);

	FUNC2();
	mmucr = FUNC4(MMUCR);

	if (!(mmucr & FUNC1(MMUCR_N))) {
		unsigned int entry;
		u32 tlbarlo;

		/* Clear the "valid" bit */
		FUNC5(TLBEHI, tlbehi);

		/* mark the entry as "not accessed" */
		entry = FUNC0(DRP, mmucr);
		tlbarlo = FUNC4(TLBARLO);
		tlbarlo |= (0x80000000UL >> entry);
		FUNC5(TLBARLO, tlbarlo);

		/* update the entry with valid bit clear */
		FUNC3();
	}
}