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
struct clock_event_device {scalar_t__ mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ CLOCK_EVT_MODE_ONESHOT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static int FUNC4(unsigned long delta,
				      struct clock_event_device *evt)
{
	FUNC2(evt->mode != CLOCK_EVT_MODE_ONESHOT);

	if (FUNC1(FUNC3(delta)) < 0)
		FUNC0();

	/* We may have missed the deadline, but there's no real way of
	   knowing for sure.  If the event was in the past, then we'll
	   get an immediate interrupt. */

	return 0;
}