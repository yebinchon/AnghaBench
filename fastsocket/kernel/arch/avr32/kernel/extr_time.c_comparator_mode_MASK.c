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
struct clock_event_device {int /*<<< orphan*/  name; } ;
typedef  enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  CLOCK_EVT_MODE_ONESHOT 131 
#define  CLOCK_EVT_MODE_RESUME 130 
#define  CLOCK_EVT_MODE_SHUTDOWN 129 
#define  CLOCK_EVT_MODE_UNUSED 128 
 int /*<<< orphan*/  COMPARE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(enum clock_event_mode mode,
		struct clock_event_device *evdev)
{
	switch (mode) {
	case CLOCK_EVT_MODE_ONESHOT:
		FUNC3("%s: start\n", evdev->name);
		/* FALLTHROUGH */
	case CLOCK_EVT_MODE_RESUME:
		FUNC1();
		break;
	case CLOCK_EVT_MODE_UNUSED:
	case CLOCK_EVT_MODE_SHUTDOWN:
		FUNC4(COMPARE, 0);
		FUNC3("%s: stop\n", evdev->name);
		FUNC2();
		break;
	default:
		FUNC0();
	}
}