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
struct x86_cpu_id {scalar_t__ driver_data; } ;
struct pstate_adjust_policy {int dummy; } ;
struct TYPE_5__ {unsigned long data; scalar_t__ expires; int /*<<< orphan*/  function; } ;
struct TYPE_4__ {int /*<<< orphan*/  max_pstate; } ;
struct cpudata {unsigned int cpu; TYPE_2__ timer; TYPE_1__ pstate; struct pstate_adjust_policy* pstate_policy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,unsigned int) ; 
 struct cpudata** all_cpu_data ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpudata*) ; 
 int /*<<< orphan*/  intel_pstate_cpu_ids ; 
 int /*<<< orphan*/  FUNC3 (struct cpudata*) ; 
 int /*<<< orphan*/  FUNC4 (struct cpudata*) ; 
 int /*<<< orphan*/  FUNC5 (struct cpudata*) ; 
 int /*<<< orphan*/  FUNC6 (struct cpudata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  intel_pstate_timer_func ; 
 scalar_t__ jiffies ; 
 struct cpudata* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned int) ; 
 struct x86_cpu_id* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(unsigned int cpunum)
{

	const struct x86_cpu_id *id;
	struct cpudata *cpu;

	id = FUNC9(intel_pstate_cpu_ids);
	if (!id)
		return -ENODEV;

	all_cpu_data[cpunum] = FUNC7(sizeof(struct cpudata), GFP_KERNEL);
	if (!all_cpu_data[cpunum])
		return -ENOMEM;

	cpu = all_cpu_data[cpunum];

	FUNC3(cpu);

	cpu->cpu = cpunum;
	cpu->pstate_policy =
		(struct pstate_adjust_policy *)id->driver_data;
	FUNC1(&cpu->timer);
	cpu->timer.function = intel_pstate_timer_func;
	cpu->timer.data =
		(unsigned long)cpu;
	cpu->timer.expires = jiffies + HZ/100;
	FUNC2(cpu);
	FUNC4(cpu);
	FUNC5(cpu);
	FUNC6(cpu, cpu->pstate.max_pstate);

	FUNC0(&cpu->timer, cpunum);

	FUNC8("Intel pstate controlling: cpu %d\n", cpunum);

	return 0;
}