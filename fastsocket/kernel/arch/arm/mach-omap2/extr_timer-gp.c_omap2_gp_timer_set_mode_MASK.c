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
struct clock_event_device {int dummy; } ;
typedef  enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;

/* Variables and functions */
#define  CLOCK_EVT_MODE_ONESHOT 132 
#define  CLOCK_EVT_MODE_PERIODIC 131 
#define  CLOCK_EVT_MODE_RESUME 130 
#define  CLOCK_EVT_MODE_SHUTDOWN 129 
#define  CLOCK_EVT_MODE_UNUSED 128 
 int HZ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  gptimer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(enum clock_event_mode mode,
				    struct clock_event_device *evt)
{
	u32 period;

	FUNC4(gptimer);

	switch (mode) {
	case CLOCK_EVT_MODE_PERIODIC:
		period = FUNC0(FUNC2(gptimer)) / HZ;
		period -= 1;
		if (FUNC1())
			period = 0xff;	/* FIXME: */
		FUNC3(gptimer, 1, 0xffffffff - period);
		break;
	case CLOCK_EVT_MODE_ONESHOT:
		break;
	case CLOCK_EVT_MODE_UNUSED:
	case CLOCK_EVT_MODE_SHUTDOWN:
	case CLOCK_EVT_MODE_RESUME:
		break;
	}
}