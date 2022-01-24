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

/* Variables and functions */
 scalar_t__ HW_TIMROT_TIMCOUNT0 ; 
 scalar_t__ REGS_TIMROT_BASE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int
FUNC1(unsigned long delta,
		struct clock_event_device *dev)
{
	/* reload the timer */
	FUNC0(delta, REGS_TIMROT_BASE + HW_TIMROT_TIMCOUNT0);
	return 0;
}