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
struct clock_event_device {int dummy; } ;
typedef  enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;

/* Variables and functions */
#define  CLOCK_EVT_MODE_ONESHOT 132 
#define  CLOCK_EVT_MODE_PERIODIC 131 
#define  CLOCK_EVT_MODE_RESUME 130 
#define  CLOCK_EVT_MODE_SHUTDOWN 129 
#define  CLOCK_EVT_MODE_UNUSED 128 
 int /*<<< orphan*/  DIS ; 
 int /*<<< orphan*/  EN ; 
 int /*<<< orphan*/  INTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_TCx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TEN ; 
 int /*<<< orphan*/  TIMER_CLOCKEVENT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  latch ; 

__attribute__((used)) static void FUNC5(enum clock_event_mode mode,
		struct clock_event_device *clk)
{
	u32 tc = FUNC3(FUNC1(TIMER_CLOCKEVENT));

	switch (mode) {
	case CLOCK_EVT_MODE_PERIODIC:
		FUNC4(latch, FUNC2(TIMER_CLOCKEVENT));
		FUNC0(tc, SYS_TCx, REN, EN);
		FUNC0(tc, SYS_TCx, INTS, EN);
		FUNC0(tc, SYS_TCx, TEN, EN);
		break;

	case CLOCK_EVT_MODE_ONESHOT:
		FUNC0(tc, SYS_TCx, REN, DIS);
		FUNC0(tc, SYS_TCx, INTS, EN);

		/* fall through */

	case CLOCK_EVT_MODE_UNUSED:
	case CLOCK_EVT_MODE_SHUTDOWN:
	case CLOCK_EVT_MODE_RESUME:
	default:
		FUNC0(tc, SYS_TCx, TEN, DIS);
		break;
	}

	FUNC4(tc, FUNC1(TIMER_CLOCKEVENT));
}