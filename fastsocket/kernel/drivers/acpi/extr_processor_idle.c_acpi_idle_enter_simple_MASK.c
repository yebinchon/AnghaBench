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
struct cpuidle_state {int dummy; } ;
struct cpuidle_device {int dummy; } ;
struct acpi_processor_cx {scalar_t__ entry_method; scalar_t__ type; int time; int /*<<< orphan*/  usage; } ;
struct acpi_processor {int dummy; } ;
typedef  int s64 ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 scalar_t__ ACPI_CSTATE_FFH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ ACPI_STATE_C3 ; 
 int PM_TIMER_TICK_NS ; 
 int /*<<< orphan*/  TS_POLLING ; 
 struct acpi_processor* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_processor_cx*) ; 
 int FUNC3 (struct cpuidle_device*,struct cpuidle_state*) ; 
 scalar_t__ acpi_idle_suspend ; 
 struct acpi_processor_cx* FUNC4 (struct cpuidle_state*) ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct acpi_processor*,struct acpi_processor_cx*,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  processors ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ FUNC16 (int) ; 
 int FUNC17 (int) ; 

__attribute__((used)) static int FUNC18(struct cpuidle_device *dev,
				  struct cpuidle_state *state)
{
	struct acpi_processor *pr;
	struct acpi_processor_cx *cx = FUNC4(state);
	ktime_t  kt1, kt2;
	s64 idle_time;
	s64 sleep_ticks = 0;

	pr = FUNC1(processors);

	if (FUNC16(!pr))
		return 0;

	if (acpi_idle_suspend)
		return(FUNC3(dev, state));

	FUNC10();
	if (cx->entry_method != ACPI_CSTATE_FFH) {
		FUNC5()->status &= ~TS_POLLING;
		/*
		 * TS_POLLING-cleared state must be visible before we test
		 * NEED_RESCHED:
		 */
		FUNC15();
	}

	if (FUNC16(FUNC12())) {
		FUNC5()->status |= TS_POLLING;
		FUNC11();
		return 0;
	}

	/*
	 * Must be done before busmaster disable as we might need to
	 * access HPET !
	 */
	FUNC9(pr, cx, 1);

	if (cx->type == ACPI_STATE_C3)
		FUNC0();

	kt1 = FUNC6();
	/* Tell the scheduler that we are going deep-idle: */
	FUNC13();
	FUNC2(cx);
	kt2 = FUNC6();
	idle_time =  FUNC8(FUNC7(kt2, kt1));

	sleep_ticks = FUNC17(idle_time);

	/* Tell the scheduler how much we idled: */
	FUNC14(sleep_ticks*PM_TIMER_TICK_NS);

	FUNC11();
	FUNC5()->status |= TS_POLLING;

	cx->usage++;

	FUNC9(pr, cx, 0);
	cx->time += sleep_ticks;
	return idle_time;
}