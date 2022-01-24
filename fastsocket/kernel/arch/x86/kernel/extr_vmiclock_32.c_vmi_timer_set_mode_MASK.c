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
struct clock_event_device {int /*<<< orphan*/  mode; } ;
typedef  enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;
typedef  int /*<<< orphan*/  cycle_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* cancel_alarm ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_alarm ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* get_cycle_counter ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* get_cycle_frequency ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  CLOCK_EVT_MODE_ONESHOT 132 
#define  CLOCK_EVT_MODE_PERIODIC 131 
#define  CLOCK_EVT_MODE_RESUME 130 
#define  CLOCK_EVT_MODE_SHUTDOWN 129 
#define  CLOCK_EVT_MODE_UNUSED 128 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  VMI_ONESHOT ; 
 int /*<<< orphan*/  VMI_PERIODIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__ vmi_timer_ops ; 

__attribute__((used)) static void FUNC9(enum clock_event_mode mode,
			       struct clock_event_device *evt)
{
	cycle_t now, cycles_per_hz;
	FUNC0(!FUNC2());

	switch (mode) {
	case CLOCK_EVT_MODE_ONESHOT:
	case CLOCK_EVT_MODE_RESUME:
		break;
	case CLOCK_EVT_MODE_PERIODIC:
		cycles_per_hz = vmi_timer_ops.get_cycle_frequency();
		(void)FUNC1(cycles_per_hz, HZ);
		now = vmi_timer_ops.get_cycle_counter(FUNC8(VMI_PERIODIC));
		vmi_timer_ops.set_alarm(VMI_PERIODIC, now, cycles_per_hz);
		break;
	case CLOCK_EVT_MODE_UNUSED:
	case CLOCK_EVT_MODE_SHUTDOWN:
		switch (evt->mode) {
		case CLOCK_EVT_MODE_ONESHOT:
			vmi_timer_ops.cancel_alarm(VMI_ONESHOT);
			break;
		case CLOCK_EVT_MODE_PERIODIC:
			vmi_timer_ops.cancel_alarm(VMI_PERIODIC);
			break;
		default:
			break;
		}
		break;
	default:
		break;
	}
}