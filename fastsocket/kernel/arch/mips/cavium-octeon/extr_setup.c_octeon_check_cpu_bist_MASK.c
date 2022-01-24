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
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int const,unsigned long long) ; 
 unsigned long long FUNC2 () ; 
 unsigned long long FUNC3 () ; 
 unsigned long long FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(void)
{
	const int coreid = FUNC0();
	unsigned long long mask;
	unsigned long long bist_val;

	/* Check BIST results for COP0 registers */
	mask = 0x1f00000000ull;
	bist_val = FUNC4();
	if (bist_val & mask)
		FUNC1("Core%d BIST Failure: CacheErr(icache) = 0x%llx\n",
		       coreid, bist_val);

	bist_val = FUNC3();
	if (bist_val & 1)
		FUNC1("Core%d L1 Dcache parity error: "
		       "CacheErr(dcache) = 0x%llx\n",
		       coreid, bist_val);

	mask = 0xfc00000000000000ull;
	bist_val = FUNC2();
	if (bist_val & mask)
		FUNC1("Core%d BIST Failure: COP0_CVM_MEM_CTL = 0x%llx\n",
		       coreid, bist_val);

	FUNC5(0);
}