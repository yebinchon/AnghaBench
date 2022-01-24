#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_4__ {int generic; int width; int cycles; int retired; } ;
struct TYPE_5__ {TYPE_1__ pal_perf_mon_info_s; } ;
typedef  TYPE_2__ pal_perf_mon_info_u_t ;

/* Variables and functions */
 char* FUNC0 (char*,int*,int) ; 
 scalar_t__ FUNC1 (int*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 

__attribute__((used)) static int
FUNC3(char *page)
{
	char *p = page;
	u64 pm_buffer[16];
	pal_perf_mon_info_u_t pm_info;

	if (FUNC1(pm_buffer, &pm_info) != 0) return 0;

	p += FUNC2(p,
		     "PMC/PMD pairs                 : %d\n"
		     "Counter width                 : %d bits\n"
		     "Cycle event number            : %d\n"
		     "Retired event number          : %d\n"
		     "Implemented PMC               : ",
		     pm_info.pal_perf_mon_info_s.generic, pm_info.pal_perf_mon_info_s.width,
		     pm_info.pal_perf_mon_info_s.cycles, pm_info.pal_perf_mon_info_s.retired);

	p = FUNC0(p, pm_buffer, 256);
	p += FUNC2(p, "\nImplemented PMD               : ");
	p = FUNC0(p, pm_buffer+4, 256);
	p += FUNC2(p, "\nCycles count capable          : ");
	p = FUNC0(p, pm_buffer+8, 256);
	p += FUNC2(p, "\nRetired bundles count capable : ");

#ifdef CONFIG_ITANIUM
	/*
	 * PAL_PERF_MON_INFO reports that only PMC4 can be used to count CPU_CYCLES
	 * which is wrong, both PMC4 and PMD5 support it.
	 */
	if (pm_buffer[12] == 0x10) pm_buffer[12]=0x30;
#endif

	p = FUNC0(p, pm_buffer+12, 256);

	p += FUNC2(p, "\n");

	return p - page;
}