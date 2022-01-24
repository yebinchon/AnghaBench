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
struct clock_event_device {int /*<<< orphan*/  (* event_handler ) (struct clock_event_device*) ;} ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  COMPARE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct clock_event_device *evdev = dev_id;

	if (FUNC3(!(FUNC0(0) & 1)))
		return IRQ_NONE;

	/*
	 * Disable the interrupt until the clockevent subsystem
	 * reprograms it.
	 */
	FUNC2(COMPARE, 0);

	evdev->event_handler(evdev);
	return IRQ_HANDLED;
}