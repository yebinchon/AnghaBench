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
struct TYPE_2__ {int /*<<< orphan*/  selfipis; int /*<<< orphan*/  timerints; } ;

/* Variables and functions */
 int NR_CPUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 TYPE_1__* smtc_cpu_stats ; 
 int /*<<< orphan*/  smtc_fpu_recoveries ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(void)
{
	int i;

	FUNC1("Counter Interrupts taken per CPU (TC)\n");
	for (i=0; i < NR_CPUS; i++) {
		FUNC1("%d: %ld\n", i, smtc_cpu_stats[i].timerints);
	}
	FUNC1("Self-IPI invocations:\n");
	for (i=0; i < NR_CPUS; i++) {
		FUNC1("%d: %ld\n", i, smtc_cpu_stats[i].selfipis);
	}
	FUNC2();
	FUNC1("%d Recoveries of \"stolen\" FPU\n",
	       FUNC0(&smtc_fpu_recoveries));
}