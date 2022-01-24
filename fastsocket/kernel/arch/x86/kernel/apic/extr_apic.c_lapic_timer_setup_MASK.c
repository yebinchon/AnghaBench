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
struct clock_event_device {int features; } ;
typedef  enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_LVTT ; 
 unsigned int APIC_LVT_MASKED ; 
 int /*<<< orphan*/  APIC_TMICT ; 
 int CLOCK_EVT_FEAT_DUMMY ; 
#define  CLOCK_EVT_MODE_ONESHOT 132 
#define  CLOCK_EVT_MODE_PERIODIC 131 
#define  CLOCK_EVT_MODE_RESUME 130 
#define  CLOCK_EVT_MODE_SHUTDOWN 129 
#define  CLOCK_EVT_MODE_UNUSED 128 
 unsigned int LOCAL_TIMER_VECTOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  calibration_result ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 

__attribute__((used)) static void FUNC5(enum clock_event_mode mode,
			      struct clock_event_device *evt)
{
	unsigned long flags;
	unsigned int v;

	/* Lapic used as dummy for broadcast ? */
	if (evt->features & CLOCK_EVT_FEAT_DUMMY)
		return;

	FUNC4(flags);

	switch (mode) {
	case CLOCK_EVT_MODE_PERIODIC:
	case CLOCK_EVT_MODE_ONESHOT:
		FUNC0(calibration_result,
				  mode != CLOCK_EVT_MODE_PERIODIC, 1);
		break;
	case CLOCK_EVT_MODE_UNUSED:
	case CLOCK_EVT_MODE_SHUTDOWN:
		v = FUNC1(APIC_LVTT);
		v |= (APIC_LVT_MASKED | LOCAL_TIMER_VECTOR);
		FUNC2(APIC_LVTT, v);
		FUNC2(APIC_TMICT, 0xffffffff);
		break;
	case CLOCK_EVT_MODE_RESUME:
		/* Nothing to do here */
		break;
	}

	FUNC3(flags);
}