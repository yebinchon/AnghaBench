#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;

/* Variables and functions */
 unsigned int DC_25PT ; 
 unsigned int DC_38PT ; 
 unsigned int DC_DFLT ; 
 unsigned int DC_DISABLE ; 
 unsigned int DC_RESV ; 
 int EINVAL ; 
 int /*<<< orphan*/  MSR_IA32_THERM_CONTROL ; 
 int /*<<< orphan*/  MSR_IA32_THERM_STATUS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,...) ; 
 scalar_t__* has_N44_O17_errata ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC4(unsigned int cpu, unsigned int newstate)
{
	u32 l, h;

	if (!FUNC0(cpu) ||
	    (newstate > DC_DISABLE) || (newstate == DC_RESV))
		return -EINVAL;

	FUNC2(cpu, MSR_IA32_THERM_STATUS, &l, &h);

	if (l & 0x01)
		FUNC1("CPU#%d currently thermal throttled\n", cpu);

	if (has_N44_O17_errata[cpu] &&
	    (newstate == DC_25PT || newstate == DC_DFLT))
		newstate = DC_38PT;

	FUNC2(cpu, MSR_IA32_THERM_CONTROL, &l, &h);
	if (newstate == DC_DISABLE) {
		FUNC1("CPU#%d disabling modulation\n", cpu);
		FUNC3(cpu, MSR_IA32_THERM_CONTROL, l & ~(1<<4), h);
	} else {
		FUNC1("CPU#%d setting duty cycle to %d%%\n",
			cpu, ((125 * newstate) / 10));
		/* bits 63 - 5	: reserved
		 * bit  4	: enable/disable
		 * bits 3-1	: duty cycle
		 * bit  0	: reserved
		 */
		l = (l & ~14);
		l = l | (1<<4) | ((newstate & 0x7)<<1);
		FUNC3(cpu, MSR_IA32_THERM_CONTROL, l, h);
	}

	return 0;
}