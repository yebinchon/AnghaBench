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
struct TYPE_2__ {int flags; int charge; int max_charge; int amperage; int voltage; int time_remaining; } ;

/* Variables and functions */
 TYPE_1__* pmu_batteries ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 

__attribute__((used)) static int
FUNC1(char *page, char **start, off_t off,
		int count, int *eof, void *data)
{
	long batnum = (long)data;
	char *p = page;
	
	p += FUNC0(p, "\n");
	p += FUNC0(p, "flags      : %08x\n",
		pmu_batteries[batnum].flags);
	p += FUNC0(p, "charge     : %d\n",
		pmu_batteries[batnum].charge);
	p += FUNC0(p, "max_charge : %d\n",
		pmu_batteries[batnum].max_charge);
	p += FUNC0(p, "current    : %d\n",
		pmu_batteries[batnum].amperage);
	p += FUNC0(p, "voltage    : %d\n",
		pmu_batteries[batnum].voltage);
	p += FUNC0(p, "time rem.  : %d\n",
		pmu_batteries[batnum].time_remaining);

	return p - page;
}