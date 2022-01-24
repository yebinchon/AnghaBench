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
 int ENOMEM ; 
 int FREQ ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GPWE ; 
 scalar_t__ L1_CODE_LENGTH ; 
 scalar_t__ L1_DATA_A_LENGTH ; 
 scalar_t__ L1_DATA_B_LENGTH ; 
 scalar_t__ L1_SCRATCH_LENGTH ; 
 int PHYWE ; 
 int SCKELOW ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*) ; 
 unsigned char* FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int vr_wakeup ; 

int FUNC18(void)
{
	unsigned long flags;
	int wakeup, ret;

	unsigned char *memptr = FUNC14(L1_CODE_LENGTH + L1_DATA_A_LENGTH
					 + L1_DATA_B_LENGTH + L1_SCRATCH_LENGTH,
					  GFP_KERNEL);

	if (memptr == NULL) {
		FUNC17("bf53x_suspend_l1_mem malloc failed");
		return -ENOMEM;
	}

	wakeup = FUNC8() & ~FREQ;
	wakeup |= SCKELOW;

#ifdef CONFIG_PM_BFIN_WAKE_PH6
	wakeup |= PHYWE;
#endif
#ifdef CONFIG_PM_BFIN_WAKE_GP
	wakeup |= GPWE;
#endif

	FUNC16(flags);

	ret = FUNC10();

	if (ret) {
		FUNC15(flags);
		FUNC13(memptr);
		return ret;
	}

	FUNC7();

#if defined(CONFIG_BFIN_EXTMEM_WRITEBACK) || defined(CONFIG_BFIN_L2_WRITEBACK)
	flushinv_all_dcache();
#endif
	FUNC0();
	FUNC1();
	FUNC5(memptr);

	FUNC11(wakeup | vr_wakeup);	/* Goodbye */

	FUNC4(memptr);

	FUNC3();
	FUNC2();

	FUNC6();
	FUNC9();

	FUNC15(flags);
	FUNC13(memptr);

	return 0;
}