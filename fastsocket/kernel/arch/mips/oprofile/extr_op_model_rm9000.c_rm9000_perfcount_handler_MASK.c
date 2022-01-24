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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct pt_regs {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int reset_counter1; int reset_counter2; int /*<<< orphan*/  control; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int RM9K_COUNTER1_OVERFLOW ; 
 unsigned int RM9K_COUNTER2_OVERFLOW ; 
 struct pt_regs* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*,int) ; 
 unsigned int FUNC2 () ; 
 int FUNC3 () ; 
 TYPE_1__ reg ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	unsigned int control = FUNC2();
	struct pt_regs *regs = FUNC0();
	uint32_t counter1, counter2;
	uint64_t counters;

	/*
	 * RM9000 combines two 32-bit performance counters into a single
	 * 64-bit coprocessor zero register.  To avoid a race updating the
	 * registers we need to stop the counters while we're messing with
	 * them ...
	 */
	FUNC4(0);

	counters = FUNC3();
	counter1 = counters;
	counter2 = counters >> 32;

	if (control & RM9K_COUNTER1_OVERFLOW) {
		FUNC1(regs, 0);
		counter1 = reg.reset_counter1;
	}
	if (control & RM9K_COUNTER2_OVERFLOW) {
		FUNC1(regs, 1);
		counter2 = reg.reset_counter2;
	}

	counters = ((uint64_t)counter2 << 32) | counter1;
	FUNC5(counters);
	FUNC4(reg.control);

	return IRQ_HANDLED;
}