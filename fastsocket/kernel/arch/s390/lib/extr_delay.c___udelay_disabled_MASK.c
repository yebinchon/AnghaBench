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
 unsigned long PSW_MASK_WAIT ; 
 TYPE_1__ S390_lowcore ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 unsigned long psw_kernel_bits ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(unsigned long long usecs)
{
	unsigned long mask, cr0, cr0_saved;
	u64 clock_saved;
	u64 end;

	mask = psw_kernel_bits | PSW_MASK_WAIT | PSW_MASK_EXT;
	end = FUNC3() + (usecs << 12);
	clock_saved = FUNC5();
	FUNC1(cr0_saved, 0, 0);
	cr0 = (cr0_saved & 0xffff00e0) | 0x00000800;
	FUNC0(cr0 , 0, 0);
	FUNC7();
	do {
		FUNC9(end);
		FUNC10();
		FUNC2(mask);
		FUNC4();
	} while (FUNC3() < end);
	FUNC8();
	FUNC0(cr0_saved, 0, 0);
	FUNC6(clock_saved);
	FUNC9(S390_lowcore.clock_comparator);
}