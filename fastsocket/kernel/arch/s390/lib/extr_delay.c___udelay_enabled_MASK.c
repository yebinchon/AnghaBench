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
typedef  scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ clock_comparator; } ;

/* Variables and functions */
 unsigned long PSW_MASK_EXT ; 
 unsigned long PSW_MASK_IO ; 
 unsigned long PSW_MASK_WAIT ; 
 TYPE_1__ S390_lowcore ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 unsigned long psw_kernel_bits ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(unsigned long long usecs)
{
	unsigned long mask;
	u64 clock_saved;
	u64 end;

	mask = psw_kernel_bits | PSW_MASK_WAIT | PSW_MASK_EXT | PSW_MASK_IO;
	end = FUNC1() + (usecs << 12);
	do {
		clock_saved = 0;
		if (end < S390_lowcore.clock_comparator) {
			clock_saved = FUNC3();
			FUNC5(end);
		}
		FUNC6();
		FUNC0(mask);
		FUNC2();
		if (clock_saved)
			FUNC4(clock_saved);
	} while (FUNC1() < end);
	FUNC5(S390_lowcore.clock_comparator);
}