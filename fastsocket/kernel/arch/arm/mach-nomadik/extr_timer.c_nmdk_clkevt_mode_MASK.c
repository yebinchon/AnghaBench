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
 scalar_t__ MTU_IMSC ; 
 scalar_t__ mtu_base ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(enum clock_event_mode mode,
			     struct clock_event_device *dev)
{
	unsigned long flags;

	switch (mode) {
	case CLOCK_EVT_MODE_PERIODIC:
		/* enable interrupts -- and count current value? */
		FUNC2(flags);
		FUNC4(FUNC3(mtu_base + MTU_IMSC) | 1, mtu_base + MTU_IMSC);
		FUNC1(flags);
		break;
	case CLOCK_EVT_MODE_ONESHOT:
		FUNC0(); /* Not supported, yet */
		/* FALLTHROUGH */
	case CLOCK_EVT_MODE_SHUTDOWN:
	case CLOCK_EVT_MODE_UNUSED:
		/* disable irq */
		FUNC2(flags);
		FUNC4(FUNC3(mtu_base + MTU_IMSC) & ~1, mtu_base + MTU_IMSC);
		FUNC1(flags);
		break;
	case CLOCK_EVT_MODE_RESUME:
		break;
	}
}