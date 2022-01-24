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
struct clock_event_device {int /*<<< orphan*/  (* event_handler ) (struct clock_event_device*) ;} ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int BM_TIMROT_TIMCTRLn_IRQ ; 
 int BM_TIMROT_TIMCTRLn_IRQ_EN ; 
 scalar_t__ HW_TIMROT_TIMCOUNT1 ; 
 scalar_t__ HW_TIMROT_TIMCTRL0 ; 
 scalar_t__ HW_TIMROT_TIMCTRL1 ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ REGS_TIMROT_BASE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct clock_event_device*) ; 

__attribute__((used)) static irqreturn_t
FUNC4(int irq, void *dev_id)
{
	struct clock_event_device *c = dev_id;

	/* timer 0 */
	if (FUNC0(REGS_TIMROT_BASE + HW_TIMROT_TIMCTRL0) &
			BM_TIMROT_TIMCTRLn_IRQ) {
		FUNC2(BM_TIMROT_TIMCTRLn_IRQ,
				REGS_TIMROT_BASE + HW_TIMROT_TIMCTRL0);
		c->event_handler(c);
	}

	/* timer 1 */
	else if (FUNC0(REGS_TIMROT_BASE + HW_TIMROT_TIMCTRL1)
			& BM_TIMROT_TIMCTRLn_IRQ) {
		FUNC2(BM_TIMROT_TIMCTRLn_IRQ,
				REGS_TIMROT_BASE + HW_TIMROT_TIMCTRL1);
		FUNC2(BM_TIMROT_TIMCTRLn_IRQ_EN,
				REGS_TIMROT_BASE + HW_TIMROT_TIMCTRL1);
		FUNC1(0xFFFF, REGS_TIMROT_BASE + HW_TIMROT_TIMCOUNT1);
	}

	return IRQ_HANDLED;
}