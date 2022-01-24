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
struct pt_regs {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned int CCNT ; 
 unsigned int CNT0 ; 
 unsigned int CNTMAX ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int FLAG_C ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct pt_regs* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct pt_regs*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *arg)
{
	struct pt_regs *regs = FUNC5();
	unsigned int cnt;
	u32 flags;


	/*
	 * Stop IRQ generation
	 */
	FUNC4();

	/*
	 * Get and reset overflow status flags
	 */
	flags = FUNC1();

	/*
	 * Cycle counter
	 */
	if (flags & FLAG_C) {
		u32 cpu_cnt = FUNC0(FUNC7(), CCNT);
		FUNC2(CCNT);
		FUNC6(regs, cpu_cnt);
	}

	/*
	 * PMNC counters 0:3
	 */
	for (cnt = CNT0; cnt < CNTMAX; cnt++) {
		if (flags & (1 << (cnt - CNT0))) {
			u32 cpu_cnt = FUNC0(FUNC7(), cnt);
			FUNC2(cnt);
			FUNC6(regs, cpu_cnt);
		}
	}

	/*
	 * Allow IRQ generation
	 */
	FUNC3();

	return IRQ_HANDLED;
}