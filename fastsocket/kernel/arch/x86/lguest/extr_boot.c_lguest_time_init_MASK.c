#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  cpumask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lguest_clock ; 
 TYPE_1__ lguest_clockevent ; 
 int /*<<< orphan*/  lguest_time_irq ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
	/* Set up the timer interrupt (0) to go to our simple timer routine */
	FUNC4(0, lguest_time_irq);

	FUNC1(&lguest_clock);

	/* We can't set cpumask in the initializer: damn C limitations!  Set it
	 * here and register our timer device. */
	lguest_clockevent.cpumask = FUNC2(0);
	FUNC0(&lguest_clockevent);

	/* Finally, we unblock the timer interrupt. */
	FUNC3(0);
}