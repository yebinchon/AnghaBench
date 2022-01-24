#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct sched_param {int sched_priority; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_EVT_NOTIFY_BROADCAST_ENTER ; 
 int /*<<< orphan*/  CLOCK_EVT_NOTIFY_BROADCAST_EXIT ; 
 int HZ ; 
 int /*<<< orphan*/  SCHED_RR ; 
 int /*<<< orphan*/  TS_POLLING ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  current ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int idle_pct ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  power_saving_mwait_eax ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 int round_robin_time ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sched_param*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 scalar_t__ tsc_detected_unstable ; 
 int tsc_marked_unstable ; 

__attribute__((used)) static int FUNC18(void *data)
{
	struct sched_param param = {.sched_priority = 1};
	int do_sleep;
	unsigned int tsk_index = (unsigned long)data;
	u64 last_jiffies = 0;

	FUNC11(current, SCHED_RR, &param);

	while (!FUNC5()) {
		int cpu;
		u64 expire_time;

		FUNC17();

		/* round robin to cpus */
		if (last_jiffies + round_robin_time * HZ < jiffies) {
			last_jiffies = jiffies;
			FUNC10(tsk_index);
		}

		do_sleep = 0;

		FUNC3()->status &= ~TS_POLLING;
		/*
		 * TS_POLLING-cleared state must be visible before we test
		 * NEED_RESCHED:
		 */
		FUNC13();

		expire_time = jiffies + HZ * (100 - idle_pct) / 100;

		while (!FUNC9()) {
			if (tsc_detected_unstable && !tsc_marked_unstable) {
				/* TSC could halt in idle, so notify users */
				FUNC8("TSC halts in idle");
				tsc_marked_unstable = 1;
			}
			FUNC6();
			cpu = FUNC14();
			FUNC2(CLOCK_EVT_NOTIFY_BROADCAST_ENTER,
				&cpu);
			FUNC16();

			FUNC0((void *)&FUNC3()->flags, 0, 0);
			FUNC13();
			if (!FUNC9())
				FUNC1(power_saving_mwait_eax, 1);

			FUNC15();
			FUNC2(CLOCK_EVT_NOTIFY_BROADCAST_EXIT,
				&cpu);
			FUNC7();

			if (jiffies > expire_time) {
				do_sleep = 1;
				break;
			}
		}

		FUNC3()->status |= TS_POLLING;

		/*
		 * current sched_rt has threshold for rt task running time.
		 * When a rt task uses 95% CPU time, the rt thread will be
		 * scheduled out for 5% CPU time to not starve other tasks. But
		 * the mechanism only works when all CPUs have RT task running,
		 * as if one CPU hasn't RT task, RT task from other CPUs will
		 * borrow CPU time from this CPU and cause RT task use > 95%
		 * CPU time. To make 'avoid staration' work, takes a nap here.
		 */
		if (do_sleep)
			FUNC12(HZ * idle_pct / 100);
	}

	FUNC4(tsk_index);
	return 0;
}