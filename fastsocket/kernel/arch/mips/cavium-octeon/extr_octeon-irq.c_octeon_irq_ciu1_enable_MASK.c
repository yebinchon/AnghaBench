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
typedef  unsigned long long uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int OCTEON_IRQ_WDOG0 ; 
 int FUNC1 () ; 
 unsigned long long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  octeon_irq_ciu1_rwlock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(unsigned int irq)
{
	int coreid = FUNC1();
	unsigned long flags;
	uint64_t en1;
	int bit = irq - OCTEON_IRQ_WDOG0;	/* Bit 0-63 of EN1 */

	/*
	 * A read lock is used here to make sure only one core is ever
	 * updating the CIU enable bits at a time.  During an enable
	 * the cores don't interfere with each other.  During a disable
	 * the write lock stops any enables that might cause a
	 * problem.
	 */
	FUNC4(&octeon_irq_ciu1_rwlock, flags);
	en1 = FUNC2(FUNC0(coreid * 2 + 1));
	en1 |= 1ull << bit;
	FUNC3(FUNC0(coreid * 2 + 1), en1);
	FUNC2(FUNC0(coreid * 2 + 1));
	FUNC5(&octeon_irq_ciu1_rwlock, flags);
}