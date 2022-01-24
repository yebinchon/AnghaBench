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
struct TYPE_2__ {scalar_t__ cpu_start; } ;

/* Variables and functions */
 scalar_t__ CPU_STATE_INACTIVE ; 
 scalar_t__ CPU_STATE_OFFLINE ; 
 int QCSS_HARDWARE_ERROR ; 
 int QCSS_STOPPED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__* paca ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int,unsigned int,int) ; 
 int FUNC6 (unsigned int) ; 

__attribute__((used)) static void FUNC7(unsigned int cpu)
{
	int tries;
	int cpu_status = 1;
	unsigned int pcpu = FUNC2(cpu);

	if (FUNC3(cpu) == CPU_STATE_INACTIVE) {
		cpu_status = 1;
		for (tries = 0; tries < 5000; tries++) {
			if (FUNC1(cpu) == CPU_STATE_INACTIVE) {
				cpu_status = 0;
				break;
			}
			FUNC4(1);
		}
	} else if (FUNC3(cpu) == CPU_STATE_OFFLINE) {

		for (tries = 0; tries < 25; tries++) {
			cpu_status = FUNC6(pcpu);
			if (cpu_status == QCSS_STOPPED ||
			    cpu_status == QCSS_HARDWARE_ERROR)
				break;
			FUNC0();
		}
	}

	if (cpu_status != 0) {
		FUNC5("Querying DEAD? cpu %i (%i) shows %i\n",
		       cpu, pcpu, cpu_status);
	}

	/* Isolation and deallocation are definatly done by
	 * drslot_chrp_cpu.  If they were not they would be
	 * done here.  Change isolate state to Isolate and
	 * change allocation-state to Unusable.
	 */
	paca[cpu].cpu_start = 0;
}