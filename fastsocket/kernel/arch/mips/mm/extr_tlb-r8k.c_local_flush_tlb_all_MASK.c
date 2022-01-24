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
 unsigned long CKSEG0 ; 
 int PAGE_SHIFT ; 
 int TFP_TLB_SET_SHIFT ; 
 int TFP_TLB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned long FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

void FUNC10(void)
{
	unsigned long flags;
	unsigned long old_ctx;
	int entry;

	FUNC1(flags);
	/* Save old context and create impossible VPN2 value */
	old_ctx = FUNC3();
	FUNC7(0);

	for (entry = 0; entry < TFP_TLB_SIZE; entry++) {
		FUNC8(entry >> TFP_TLB_SET_SHIFT);
		FUNC9(entry << PAGE_SHIFT);
		FUNC6(CKSEG0 + (entry << (PAGE_SHIFT + 1)));
		FUNC2();
		FUNC4();
	}
	FUNC5();
	FUNC6(old_ctx);
	FUNC0(flags);
}