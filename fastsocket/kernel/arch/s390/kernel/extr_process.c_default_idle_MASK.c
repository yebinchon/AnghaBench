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

/* Variables and functions */
 int /*<<< orphan*/  TIF_MCCK_PENDING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static void FUNC15(void)
{
	/* CPU is going idle. */
	FUNC2();
	if (FUNC6()) {
		FUNC3();
		return;
	}
#ifdef CONFIG_HOTPLUG_CPU
	if (cpu_is_offline(smp_processor_id())) {
		preempt_enable_no_resched();
		cpu_die();
	}
#endif
	FUNC4();
	if (FUNC12(TIF_MCCK_PENDING)) {
		FUNC5();
		FUNC3();
		FUNC8();
		return;
	}
	FUNC13();
	/* Don't trace preempt off for idle. */
	FUNC11();
	/* Stop virtual timer and halt the cpu. */
	FUNC14();
	/* Reenable preemption tracer. */
	FUNC10();
}