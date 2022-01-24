#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mce {int /*<<< orphan*/  mcgcap; int /*<<< orphan*/  extcpu; int /*<<< orphan*/  apicid; int /*<<< orphan*/  socketid; int /*<<< orphan*/  cpuid; int /*<<< orphan*/  cpuvendor; int /*<<< orphan*/  time; int /*<<< orphan*/  tsc; int /*<<< orphan*/  cpu; } ;
struct TYPE_4__ {int /*<<< orphan*/  x86_vendor; } ;
struct TYPE_3__ {int /*<<< orphan*/  initial_apicid; int /*<<< orphan*/  phys_proc_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_IA32_MCG_CAP ; 
 TYPE_2__ boot_cpu_data ; 
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct mce*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(struct mce *m)
{
	FUNC3(m, 0, sizeof(struct mce));
	m->cpu = m->extcpu = FUNC6();
	FUNC5(m->tsc);
	/* We hope get_seconds stays lockless */
	m->time = FUNC2();
	m->cpuvendor = boot_cpu_data.x86_vendor;
	m->cpuid = FUNC1(1);
#ifdef CONFIG_SMP
	m->socketid = cpu_data(m->extcpu).phys_proc_id;
#endif
	m->apicid = FUNC0(m->extcpu).initial_apicid;
	FUNC4(MSR_IA32_MCG_CAP, m->mcgcap);
}