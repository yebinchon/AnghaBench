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
struct cpuidle_state {int dummy; } ;
struct cpuidle_device {TYPE_2__* safe_state; TYPE_2__* last_state; } ;
struct acpi_processor_cx {scalar_t__ entry_method; int time; int /*<<< orphan*/  usage; int /*<<< orphan*/  bm_sts_skip; } ;
struct TYPE_4__ {scalar_t__ bm_control; scalar_t__ bm_check; } ;
struct acpi_processor {TYPE_1__ flags; } ;
typedef  int s64 ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_6__ {int /*<<< orphan*/  status; } ;
struct TYPE_5__ {int (* enter ) (struct cpuidle_device*,TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_BITREG_ARB_DISABLE ; 
 scalar_t__ ACPI_CSTATE_FFH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int PM_TIMER_TICK_NS ; 
 int /*<<< orphan*/  TS_POLLING ; 
 struct acpi_processor* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_processor_cx*) ; 
 int FUNC4 (struct cpuidle_device*,struct cpuidle_state*) ; 
 scalar_t__ acpi_idle_suspend ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ c3_cpu_count ; 
 int /*<<< orphan*/  c3_lock ; 
 struct acpi_processor_cx* FUNC8 (struct cpuidle_state*) ; 
 TYPE_3__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct acpi_processor*,struct acpi_processor_cx*,int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int FUNC16 () ; 
 scalar_t__ FUNC17 () ; 
 int /*<<< orphan*/  processors ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int FUNC24 (struct cpuidle_device*,TYPE_2__*) ; 
 scalar_t__ FUNC25 (int) ; 
 int FUNC26 (int) ; 

__attribute__((used)) static int FUNC27(struct cpuidle_device *dev,
			      struct cpuidle_state *state)
{
	struct acpi_processor *pr;
	struct acpi_processor_cx *cx = FUNC8(state);
	ktime_t  kt1, kt2;
	s64 idle_time;
	s64 sleep_ticks = 0;


	pr = FUNC1(processors);

	if (FUNC25(!pr))
		return 0;

	if (acpi_idle_suspend)
		return(FUNC4(dev, state));

	if (!cx->bm_sts_skip && FUNC2()) {
		if (dev->safe_state) {
			dev->last_state = dev->safe_state;
			return dev->safe_state->enter(dev, dev->safe_state);
		} else {
			FUNC14();
			FUNC5();
			FUNC15();
			return 0;
		}
	}

	FUNC14();
	if (cx->entry_method != ACPI_CSTATE_FFH) {
		FUNC9()->status &= ~TS_POLLING;
		/*
		 * TS_POLLING-cleared state must be visible before we test
		 * NEED_RESCHED:
		 */
		FUNC20();
	}

	if (FUNC25(FUNC16())) {
		FUNC9()->status |= TS_POLLING;
		FUNC15();
		return 0;
	}

	FUNC6(FUNC21());

	/* Tell the scheduler that we are going deep-idle: */
	FUNC18();
	/*
	 * Must be done before busmaster disable as we might need to
	 * access HPET !
	 */
	FUNC13(pr, cx, 1);

	kt1 = FUNC10();
	/*
	 * disable bus master
	 * bm_check implies we need ARB_DIS
	 * !bm_check implies we need cache flush
	 * bm_control implies whether we can do ARB_DIS
	 *
	 * That leaves a case where bm_check is set and bm_control is
	 * not set. In that case we cannot do much, we enter C3
	 * without doing anything.
	 */
	if (pr->flags.bm_check && pr->flags.bm_control) {
		FUNC22(&c3_lock);
		c3_cpu_count++;
		/* Disable bus master arbitration when all CPUs are in C3 */
		if (c3_cpu_count == FUNC17())
			FUNC7(ACPI_BITREG_ARB_DISABLE, 1);
		FUNC23(&c3_lock);
	} else if (!pr->flags.bm_check) {
		FUNC0();
	}

	FUNC3(cx);

	/* Re-enable bus master arbitration */
	if (pr->flags.bm_check && pr->flags.bm_control) {
		FUNC22(&c3_lock);
		FUNC7(ACPI_BITREG_ARB_DISABLE, 0);
		c3_cpu_count--;
		FUNC23(&c3_lock);
	}
	kt2 = FUNC10();
	idle_time =  FUNC12(FUNC11(kt2, kt1));

	sleep_ticks = FUNC26(idle_time);
	/* Tell the scheduler how much we idled: */
	FUNC19(sleep_ticks*PM_TIMER_TICK_NS);

	FUNC15();
	FUNC9()->status |= TS_POLLING;

	cx->usage++;

	FUNC13(pr, cx, 0);
	cx->time += sleep_ticks;
	return idle_time;
}