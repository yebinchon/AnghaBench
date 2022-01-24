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
struct clock_event_device {int dummy; } ;
typedef  enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;

/* Variables and functions */
#define  CLOCK_EVT_MODE_ONESHOT 132 
#define  CLOCK_EVT_MODE_PERIODIC 131 
#define  CLOCK_EVT_MODE_RESUME 130 
#define  CLOCK_EVT_MODE_SHUTDOWN 129 
#define  CLOCK_EVT_MODE_UNUSED 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int HZ ; 
 int TAUTORLD ; 
 int TIME_SCALE ; 
 int TMPWR ; 
 int TMREN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 

__attribute__((used)) static void FUNC6(enum clock_event_mode mode,
				struct clock_event_device *evt)
{
	switch (mode) {
	case CLOCK_EVT_MODE_PERIODIC: {
		unsigned long tcount = ((FUNC5() / (HZ * TIME_SCALE)) - 1);
		FUNC1(TMPWR);
		FUNC0();
		FUNC4(TIME_SCALE - 1);
		FUNC3(tcount);
		FUNC2(tcount);
		FUNC0();
		FUNC1(TMPWR | TMREN | TAUTORLD);
		break;
	}
	case CLOCK_EVT_MODE_ONESHOT:
		FUNC1(TMPWR);
		FUNC0();
		FUNC4(TIME_SCALE - 1);
		FUNC3(0);
		FUNC2(0);
		break;
	case CLOCK_EVT_MODE_UNUSED:
	case CLOCK_EVT_MODE_SHUTDOWN:
		FUNC1(0);
		FUNC0();
		break;
	case CLOCK_EVT_MODE_RESUME:
		break;
	}
}