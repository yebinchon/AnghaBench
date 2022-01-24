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
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ TIMER0_VA_BASE ; 
 scalar_t__ TIMER_INTCLR ; 
 int /*<<< orphan*/  FUNC0 (struct clock_event_device*) ; 
 struct clock_event_device timer0_clockevent ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *dev_id)
{
	struct clock_event_device *evt = &timer0_clockevent;

	FUNC1(1, TIMER0_VA_BASE + TIMER_INTCLR);

	evt->event_handler(evt);

	return IRQ_HANDLED;
}