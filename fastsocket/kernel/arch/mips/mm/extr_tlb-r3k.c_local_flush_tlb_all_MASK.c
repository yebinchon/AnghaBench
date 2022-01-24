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
struct TYPE_2__ {int tlbsize; } ;

/* Variables and functions */
 unsigned long ASID_MASK ; 
 int /*<<< orphan*/  BARRIER ; 
 TYPE_1__ current_cpu_data ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ r3k_have_wired_reg ; 
 unsigned long FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

void FUNC9(void)
{
	unsigned long flags;
	unsigned long old_ctx;
	int entry;

#ifdef DEBUG_TLB
	printk("[tlball]");
#endif

	FUNC1(flags);
	old_ctx = FUNC3() & ASID_MASK;
	FUNC7(0);
	entry = r3k_have_wired_reg ? FUNC4() : 8;
	for (; entry < current_cpu_data.tlbsize; entry++) {
		FUNC8(entry << 8);
		FUNC6((entry | 0x80000) << 12);
		BARRIER;
		FUNC5();
	}
	FUNC6(old_ctx);
	FUNC0(flags);
}