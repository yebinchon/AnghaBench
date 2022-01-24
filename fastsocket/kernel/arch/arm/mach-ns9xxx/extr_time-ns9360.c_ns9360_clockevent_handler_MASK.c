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
typedef  int /*<<< orphan*/  u32 ;
struct clock_event_device {int /*<<< orphan*/  (* event_handler ) (struct clock_event_device*) ;} ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  DIS ; 
 int /*<<< orphan*/  INTC ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int IRQ_NS9360_TIMER0 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REN ; 
 int /*<<< orphan*/  SET ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  SYS_TCx ; 
 scalar_t__ SYS_TCx_REN_DIS ; 
 int /*<<< orphan*/  TEN ; 
 int /*<<< orphan*/  UNSET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clock_event_device ns9360_clockevent_device ; 
 int /*<<< orphan*/  FUNC5 (struct clock_event_device*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	int timerno = irq - IRQ_NS9360_TIMER0;
	u32 tc;

	struct clock_event_device *evt = &ns9360_clockevent_device;

	/* clear irq */
	tc = FUNC3(FUNC2(timerno));
	if (FUNC0(tc, SYS_TCx, REN) == SYS_TCx_REN_DIS) {
		FUNC1(tc, SYS_TCx, TEN, DIS);
		FUNC4(tc, FUNC2(timerno));
	}
	FUNC1(tc, SYS_TCx, INTC, SET);
	FUNC4(tc, FUNC2(timerno));
	FUNC1(tc, SYS_TCx, INTC, UNSET);
	FUNC4(tc, FUNC2(timerno));

	evt->event_handler(evt);

	return IRQ_HANDLED;
}