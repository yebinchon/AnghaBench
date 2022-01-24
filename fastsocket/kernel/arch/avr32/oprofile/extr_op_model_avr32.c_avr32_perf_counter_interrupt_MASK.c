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
struct avr32_perf_counter {int flag_mask; int count; scalar_t__ enabled; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  AVR32_PERFCTR_IRQ_GROUP ; 
 int AVR32_PERFCTR_IRQ_LINE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  PCCNT ; 
 int /*<<< orphan*/  PCCR ; 
 int /*<<< orphan*/  PCNT0 ; 
 int /*<<< orphan*/  PCNT1 ; 
 struct pt_regs* FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct avr32_perf_counter *ctr = dev_id;
	struct pt_regs *regs;
	u32 pccr;

	if (FUNC2(!(FUNC1(AVR32_PERFCTR_IRQ_GROUP)
					& (1 << AVR32_PERFCTR_IRQ_LINE))))
		return IRQ_NONE;

	regs = FUNC0();
	pccr = FUNC4(PCCR);

	/* Clear the interrupt flags we're about to handle */
	FUNC5(PCCR, pccr);

	/* PCCNT */
	if (ctr->enabled && (pccr & ctr->flag_mask)) {
		FUNC5(PCCNT, -ctr->count);
		FUNC3(regs, PCCNT);
	}
	ctr++;
	/* PCNT0 */
	if (ctr->enabled && (pccr & ctr->flag_mask)) {
		FUNC5(PCNT0, -ctr->count);
		FUNC3(regs, PCNT0);
	}
	ctr++;
	/* PCNT1 */
	if (ctr->enabled && (pccr & ctr->flag_mask)) {
		FUNC5(PCNT1, -ctr->count);
		FUNC3(regs, PCNT1);
	}

	return IRQ_HANDLED;
}