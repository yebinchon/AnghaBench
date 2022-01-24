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
struct TYPE_2__ {int /*<<< orphan*/  processorCount; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int boot_cpuid ; 
 int /*<<< orphan*/  cpu_online_map ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 () ; 
 TYPE_1__* vdso_data ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(void)
{
	int cpu = FUNC2();

	FUNC1(cpu, false);
	vdso_data->processorCount--;

	/*fix boot_cpuid here*/
	if (cpu == boot_cpuid)
		boot_cpuid = FUNC0(cpu_online_map);

	/* FIXME: abstract this to not be platform specific later on */
	FUNC3();
	return 0;
}