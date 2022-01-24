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
 int /*<<< orphan*/  AT91_PIT_MR ; 
 int AT91_PIT_PITEN ; 
 int AT91_PIT_PITIEN ; 
 int /*<<< orphan*/  AT91_PIT_PIVR ; 
 int /*<<< orphan*/  FUNC0 () ; 
#define  CLOCK_EVT_MODE_ONESHOT 132 
#define  CLOCK_EVT_MODE_PERIODIC 131 
#define  CLOCK_EVT_MODE_RESUME 130 
#define  CLOCK_EVT_MODE_SHUTDOWN 129 
#define  CLOCK_EVT_MODE_UNUSED 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int pit_cnt ; 
 int pit_cycle ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

__attribute__((used)) static void
FUNC6(enum clock_event_mode mode, struct clock_event_device *dev)
{
	unsigned long	flags;

	switch (mode) {
	case CLOCK_EVT_MODE_PERIODIC:
		/* update clocksource counter, then enable the IRQ */
		FUNC5(flags);
		pit_cnt += pit_cycle * FUNC1(FUNC2(AT91_PIT_PIVR));
		FUNC3(AT91_PIT_MR, (pit_cycle - 1) | AT91_PIT_PITEN
				| AT91_PIT_PITIEN);
		FUNC4(flags);
		break;
	case CLOCK_EVT_MODE_ONESHOT:
		FUNC0();
		/* FALLTHROUGH */
	case CLOCK_EVT_MODE_SHUTDOWN:
	case CLOCK_EVT_MODE_UNUSED:
		/* disable irq, leaving the clocksource active */
		FUNC3(AT91_PIT_MR, (pit_cycle - 1) | AT91_PIT_PITEN);
		break;
	case CLOCK_EVT_MODE_RESUME:
		break;
	}
}