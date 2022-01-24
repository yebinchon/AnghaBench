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
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_2__ {int /*<<< orphan*/  selfipis; int /*<<< orphan*/  timerints; } ;

/* Variables and functions */
 int NR_CPUS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 () ; 
 TYPE_1__* smtc_cpu_stats ; 
 int /*<<< orphan*/  smtc_fpu_recoveries ; 
 int smtc_status ; 
 int FUNC2 (char*,char*,...) ; 

__attribute__((used)) static int FUNC3(char *page, char **start, off_t off,
                          int count, int *eof, void *data)
{
	int totalen = 0;
	int len;
	int i;
	extern unsigned long ebase;

	len = FUNC2(page, "SMTC Status Word: 0x%08x\n", smtc_status);
	totalen += len;
	page += len;
	len = FUNC2(page, "Config7: 0x%08x\n", FUNC1());
	totalen += len;
	page += len;
	len = FUNC2(page, "EBASE: 0x%08lx\n", ebase);
	totalen += len;
	page += len;
	len = FUNC2(page, "Counter Interrupts taken per CPU (TC)\n");
	totalen += len;
	page += len;
	for (i=0; i < NR_CPUS; i++) {
		len = FUNC2(page, "%d: %ld\n", i, smtc_cpu_stats[i].timerints);
		totalen += len;
		page += len;
	}
	len = FUNC2(page, "Self-IPIs by CPU:\n");
	totalen += len;
	page += len;
	for(i = 0; i < NR_CPUS; i++) {
		len = FUNC2(page, "%d: %ld\n", i, smtc_cpu_stats[i].selfipis);
		totalen += len;
		page += len;
	}
	len = FUNC2(page, "%d Recoveries of \"stolen\" FPU\n",
	              FUNC0(&smtc_fpu_recoveries));
	totalen += len;
	page += len;

	return totalen;
}