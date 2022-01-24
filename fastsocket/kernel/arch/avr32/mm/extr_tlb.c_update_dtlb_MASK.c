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
typedef  unsigned long u32 ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  ASID ; 
 int /*<<< orphan*/  DRP ; 
 int /*<<< orphan*/  MMUCR ; 
 int /*<<< orphan*/  MMUCR_N ; 
 unsigned long MMU_VPN_MASK ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLBARLO ; 
 int /*<<< orphan*/  TLBEHI ; 
 int /*<<< orphan*/  TLBEHI_V ; 
 int /*<<< orphan*/  TLBELO ; 
 unsigned long _PAGE_FLAGS_HARDWARE_MASK ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (unsigned long) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC10(unsigned long address, pte_t pte)
{
	u32 tlbehi;
	u32 mmucr;

	/*
	 * We're not changing the ASID here, so no need to flush the
	 * pipeline.
	 */
	tlbehi = FUNC8(TLBEHI);
	tlbehi = FUNC0(ASID, FUNC1(ASID, tlbehi));
	tlbehi |= address & MMU_VPN_MASK;
	tlbehi |= FUNC3(TLBEHI_V);
	FUNC9(TLBEHI, tlbehi);

	/* Does this mapping already exist? */
	FUNC4();
	mmucr = FUNC8(MMUCR);

	if (mmucr & FUNC3(MMUCR_N)) {
		/* Not found -- pick a not-recently-accessed entry */
		unsigned int rp;
		u32 tlbar = FUNC8(TLBARLO);

		rp = 32 - FUNC6(tlbar);
		if (rp == 32) {
			rp = 0;
			FUNC9(TLBARLO, -1L);
		}

		mmucr = FUNC2(DRP, rp, mmucr);
		FUNC9(MMUCR, mmucr);
	}

	FUNC9(TLBELO, FUNC7(pte) & _PAGE_FLAGS_HARDWARE_MASK);

	/* Let's go */
	FUNC5();
}