#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ expires; } ;
struct TYPE_3__ {int lasttime; scalar_t__ settle_time_valid; int /*<<< orphan*/  settle_time; TYPE_2__ timer; } ;
struct sym_hcb {TYPE_1__ s; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ SYM_CONF_TIMER_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sym_hcb*) ; 
 int sym_verbose ; 
 int /*<<< orphan*/  FUNC3 (struct sym_hcb*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct sym_hcb *np)
{
	unsigned long thistime = jiffies;

	/*
	 *  Restart the timer.
	 */
	np->s.timer.expires = thistime + SYM_CONF_TIMER_INTERVAL;
	FUNC0(&np->s.timer);

	/*
	 *  If we are resetting the ncr, wait for settle_time before 
	 *  clearing it. Then command processing will be resumed.
	 */
	if (np->s.settle_time_valid) {
		if (FUNC4(np->s.settle_time, thistime)) {
			if (sym_verbose >= 2 )
				FUNC1("%s: command processing resumed\n",
				       FUNC2(np));
			np->s.settle_time_valid = 0;
		}
		return;
	}

	/*
	 *	Nothing to do for now, but that may come.
	 */
	if (np->s.lasttime + 4*HZ < thistime) {
		np->s.lasttime = thistime;
	}

#ifdef SYM_CONF_PCIQ_MAY_MISS_COMPLETIONS
	/*
	 *  Some way-broken PCI bridges may lead to 
	 *  completions being lost when the clearing 
	 *  of the INTFLY flag by the CPU occurs 
	 *  concurrently with the chip raising this flag.
	 *  If this ever happen, lost completions will 
	 * be reaped here.
	 */
	sym_wakeup_done(np);
#endif
}