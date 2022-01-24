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
struct TYPE_2__ {scalar_t__ selfipis; scalar_t__ timerints; } ;

/* Variables and functions */
 int NR_CPUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  proc_read_smtc ; 
 TYPE_1__* smtc_cpu_stats ; 
 int /*<<< orphan*/  smtc_fpu_recoveries ; 
 int /*<<< orphan*/  smtc_stats ; 

void FUNC2(void)
{
	int i;

	for (i=0; i<NR_CPUS; i++) {
		smtc_cpu_stats[i].timerints = 0;
		smtc_cpu_stats[i].selfipis = 0;
	}

	FUNC0(&smtc_fpu_recoveries, 0);

	smtc_stats = FUNC1("smtc", 0444, NULL,
	                                    proc_read_smtc, NULL);
}