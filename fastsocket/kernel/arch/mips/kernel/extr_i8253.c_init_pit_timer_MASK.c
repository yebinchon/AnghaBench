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
struct clock_event_device {int const mode; } ;
typedef  enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;

/* Variables and functions */
#define  CLOCK_EVT_MODE_ONESHOT 132 
#define  CLOCK_EVT_MODE_PERIODIC 131 
#define  CLOCK_EVT_MODE_RESUME 130 
#define  CLOCK_EVT_MODE_SHUTDOWN 129 
#define  CLOCK_EVT_MODE_UNUSED 128 
 int LATCH ; 
 int /*<<< orphan*/  PIT_CH0 ; 
 int /*<<< orphan*/  PIT_MODE ; 
 int /*<<< orphan*/  i8253_lock ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(enum clock_event_mode mode,
			   struct clock_event_device *evt)
{
	FUNC2(&i8253_lock);

	switch(mode) {
	case CLOCK_EVT_MODE_PERIODIC:
		/* binary, mode 2, LSB/MSB, ch 0 */
		FUNC1(0x34, PIT_MODE);
		FUNC1(LATCH & 0xff , PIT_CH0);	/* LSB */
		FUNC0(LATCH >> 8 , PIT_CH0);	/* MSB */
		break;

	case CLOCK_EVT_MODE_SHUTDOWN:
	case CLOCK_EVT_MODE_UNUSED:
		if (evt->mode == CLOCK_EVT_MODE_PERIODIC ||
		    evt->mode == CLOCK_EVT_MODE_ONESHOT) {
			FUNC1(0x30, PIT_MODE);
			FUNC1(0, PIT_CH0);
			FUNC1(0, PIT_CH0);
		}
		break;

	case CLOCK_EVT_MODE_ONESHOT:
		/* One shot setup */
		FUNC1(0x38, PIT_MODE);
		break;

	case CLOCK_EVT_MODE_RESUME:
		/* Nothing to do here */
		break;
	}
	FUNC3(&i8253_lock);
}