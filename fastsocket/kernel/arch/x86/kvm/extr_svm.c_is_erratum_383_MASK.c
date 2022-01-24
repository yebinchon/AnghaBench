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
typedef  unsigned long long u64 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_IA32_MC0_STATUS ; 
 int /*<<< orphan*/  MSR_IA32_MCG_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  erratum_383_found ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long) ; 
 unsigned long long FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long long) ; 

__attribute__((used)) static bool FUNC6(void)
{
	int err, i;
	u64 value;

	if (!erratum_383_found)
		return false;

	value = FUNC3(MSR_IA32_MC0_STATUS, &err);
	if (err)
		return false;

	/* Bit 62 may or may not be set for this mce */
	value &= ~(1ULL << 62);

	if (value != 0xb600000000010015)
		return false;

	/* Clear MCi_STATUS registers */
	for (i = 0; i < 6; ++i)
		FUNC4(FUNC0(i), 0, 0);

	value = FUNC3(MSR_IA32_MCG_STATUS, &err);
	if (!err) {
		u32 low, high;

		value &= ~(1ULL << 2);
		low    = FUNC2(value);
		high   = FUNC5(value);

		FUNC4(MSR_IA32_MCG_STATUS, low, high);
	}

	/* Flush tlb to evict multi-match entries */
	FUNC1();

	return true;
}