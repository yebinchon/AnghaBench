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
 int /*<<< orphan*/  FUNC0 () ; 
#define  CLOCK_EVT_MODE_ONESHOT 132 
#define  CLOCK_EVT_MODE_PERIODIC 131 
#define  CLOCK_EVT_MODE_RESUME 130 
#define  CLOCK_EVT_MODE_SHUTDOWN 129 
#define  CLOCK_EVT_MODE_UNUSED 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VCPUOP_stop_periodic_timer ; 
 int /*<<< orphan*/  VCPUOP_stop_singleshot_timer ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 

__attribute__((used)) static void FUNC4(enum clock_event_mode mode,
				struct clock_event_device *evt)
{
	int cpu = FUNC3();

	switch (mode) {
	case CLOCK_EVT_MODE_PERIODIC:
		FUNC2(1);	/* unsupported */
		break;

	case CLOCK_EVT_MODE_ONESHOT:
		if (FUNC1(VCPUOP_stop_periodic_timer, cpu, NULL))
			FUNC0();
		break;

	case CLOCK_EVT_MODE_UNUSED:
	case CLOCK_EVT_MODE_SHUTDOWN:
		if (FUNC1(VCPUOP_stop_singleshot_timer, cpu, NULL) ||
		    FUNC1(VCPUOP_stop_periodic_timer, cpu, NULL))
			FUNC0();
		break;
	case CLOCK_EVT_MODE_RESUME:
		break;
	}
}