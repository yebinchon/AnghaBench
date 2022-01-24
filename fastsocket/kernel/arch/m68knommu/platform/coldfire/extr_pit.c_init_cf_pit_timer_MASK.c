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
 int /*<<< orphan*/  MCFPIT_PCSR ; 
 int MCFPIT_PCSR_CLK64 ; 
 int MCFPIT_PCSR_DISABLE ; 
 int MCFPIT_PCSR_EN ; 
 int MCFPIT_PCSR_OVW ; 
 int MCFPIT_PCSR_PIE ; 
 int MCFPIT_PCSR_RLD ; 
 int /*<<< orphan*/  MCFPIT_PMR ; 
 int PIT_CYCLES_PER_JIFFY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(enum clock_event_mode mode,
                             struct clock_event_device *evt)
{
	switch (mode) {
	case CLOCK_EVT_MODE_PERIODIC:

		FUNC1(MCFPIT_PCSR_DISABLE, FUNC0(MCFPIT_PCSR));
		FUNC1(PIT_CYCLES_PER_JIFFY, FUNC0(MCFPIT_PMR));
		FUNC1(MCFPIT_PCSR_EN | MCFPIT_PCSR_PIE | \
				MCFPIT_PCSR_OVW | MCFPIT_PCSR_RLD | \
				MCFPIT_PCSR_CLK64, FUNC0(MCFPIT_PCSR));
		break;

	case CLOCK_EVT_MODE_SHUTDOWN:
	case CLOCK_EVT_MODE_UNUSED:

		FUNC1(MCFPIT_PCSR_DISABLE, FUNC0(MCFPIT_PCSR));
		break;

	case CLOCK_EVT_MODE_ONESHOT:

		FUNC1(MCFPIT_PCSR_DISABLE, FUNC0(MCFPIT_PCSR));
		FUNC1(MCFPIT_PCSR_EN | MCFPIT_PCSR_PIE | \
				MCFPIT_PCSR_OVW | MCFPIT_PCSR_CLK64, \
				FUNC0(MCFPIT_PCSR));
		break;

	case CLOCK_EVT_MODE_RESUME:
		/* Nothing to do here */
		break;
	}
}