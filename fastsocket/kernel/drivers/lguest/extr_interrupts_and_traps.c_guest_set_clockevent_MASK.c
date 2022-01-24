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
struct lg_cpu {int /*<<< orphan*/  hrt; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 

void FUNC5(struct lg_cpu *cpu, unsigned long delta)
{
	ktime_t expires;

	if (FUNC4(delta == 0)) {
		/* Clock event device is shutting down. */
		FUNC0(&cpu->hrt);
		return;
	}

	/*
	 * We use wallclock time here, so the Guest might not be running for
	 * all the time between now and the timer interrupt it asked for.  This
	 * is almost always the right thing to do.
	 */
	expires = FUNC2(FUNC3(), delta);
	FUNC1(&cpu->hrt, expires, HRTIMER_MODE_ABS);
}