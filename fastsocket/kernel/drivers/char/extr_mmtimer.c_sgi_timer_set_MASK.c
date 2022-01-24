#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timespec {int dummy; } ;
struct rb_node {int dummy; } ;
struct mmtimer {int /*<<< orphan*/  cpu; struct k_itimer* timer; } ;
struct TYPE_4__ {size_t node; unsigned long incr; unsigned long expires; int /*<<< orphan*/  clock; } ;
struct TYPE_5__ {TYPE_1__ mmtimer; } ;
struct k_itimer {TYPE_2__ it; } ;
struct itimerspec {struct timespec it_interval; struct timespec it_value; } ;
typedef  size_t cnodeid_t ;
struct TYPE_6__ {int /*<<< orphan*/  lock; struct rb_node* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMPARATOR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int TIMER_ABSTIME ; 
 int /*<<< orphan*/  TIMER_SET ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*) ; 
 struct mmtimer* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mmtimer*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 unsigned long FUNC9 () ; 
 unsigned long sgi_clock_period ; 
 int /*<<< orphan*/  FUNC10 (struct k_itimer*) ; 
 int /*<<< orphan*/  FUNC11 (struct k_itimer*,struct itimerspec*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_3__* timers ; 
 unsigned long FUNC15 (struct timespec*) ; 

__attribute__((used)) static int FUNC16(struct k_itimer *timr, int flags,
	struct itimerspec * new_setting,
	struct itimerspec * old_setting)
{
	unsigned long when, period, irqflags;
	int err = 0;
	cnodeid_t nodeid;
	struct mmtimer *base;
	struct rb_node *n;

	if (old_setting)
		FUNC11(timr, old_setting);

	FUNC10(timr);
	when = FUNC15(&new_setting->it_value);
	period = FUNC15(&new_setting->it_interval);

	if (when == 0)
		/* Clear timer */
		return 0;

	base = FUNC3(sizeof(struct mmtimer), GFP_KERNEL);
	if (base == NULL)
		return -ENOMEM;

	if (flags & TIMER_ABSTIME) {
		struct timespec n;
		unsigned long now;

		FUNC2(&n);
		now = FUNC15(&n);
		if (when > now)
			when -= now;
		else
			/* Fire the timer immediately */
			when = 0;
	}

	/*
	 * Convert to sgi clock period. Need to keep rtc_time() as near as possible
	 * to getnstimeofday() in order to be as faithful as possible to the time
	 * specified.
	 */
	when = (when + sgi_clock_period - 1) / sgi_clock_period + FUNC9();
	period = (period + sgi_clock_period - 1)  / sgi_clock_period;

	/*
	 * We are allocating a local SHub comparator. If we would be moved to another
	 * cpu then another SHub may be local to us. Prohibit that by switching off
	 * preemption.
	 */
	FUNC7();

	nodeid =  FUNC1(FUNC12());

	/* Lock the node timer structure */
	FUNC13(&timers[nodeid].lock, irqflags);

	base->timer = timr;
	base->cpu = FUNC12();

	timr->it.mmtimer.clock = TIMER_SET;
	timr->it.mmtimer.node = nodeid;
	timr->it.mmtimer.incr = period;
	timr->it.mmtimer.expires = when;

	n = timers[nodeid].next;

	/* Add the new struct mmtimer to node's timer list */
	FUNC4(base);

	if (timers[nodeid].next == n) {
		/* No need to reprogram comparator for now */
		FUNC14(&timers[nodeid].lock, irqflags);
		FUNC8();
		return err;
	}

	/* We need to reprogram the comparator */
	if (n)
		FUNC5(FUNC0(nodeid), COMPARATOR);

	FUNC6(nodeid);

	/* Unlock the node timer structure */
	FUNC14(&timers[nodeid].lock, irqflags);

	FUNC8();

	return err;
}