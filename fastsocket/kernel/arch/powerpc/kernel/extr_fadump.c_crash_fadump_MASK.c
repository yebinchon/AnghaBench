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
struct pt_regs {int dummy; } ;
struct fadump_crash_info_header {int /*<<< orphan*/  cpu_online_mask; struct pt_regs regs; int /*<<< orphan*/  crashing_cpu; } ;
struct TYPE_2__ {int /*<<< orphan*/  fadumphdr_addr; int /*<<< orphan*/  dump_registered; } ;

/* Variables and functions */
 struct fadump_crash_info_header* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * cpu_online_mask ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  crashing_cpu ; 
 TYPE_1__ fw_dump ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct pt_regs *regs, const char *str)
{
	struct fadump_crash_info_header *fdh = NULL;

	if (!fw_dump.dump_registered || !fw_dump.fadumphdr_addr)
		return;

	fdh = FUNC0(fw_dump.fadumphdr_addr);
	crashing_cpu = FUNC4();
	fdh->crashing_cpu = crashing_cpu;
	FUNC1();

	if (regs)
		fdh->regs = *regs;
	else
		FUNC2(&fdh->regs);

	fdh->cpu_online_mask = *cpu_online_mask;

	/* Call ibm,os-term rtas call to trigger firmware assisted dump */
	FUNC3((char *)str);
}