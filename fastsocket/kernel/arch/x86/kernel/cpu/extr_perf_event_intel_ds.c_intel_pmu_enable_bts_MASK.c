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
typedef  int u64 ;

/* Variables and functions */
 int ARCH_PERFMON_EVENTSEL_OS ; 
 int ARCH_PERFMON_EVENTSEL_USR ; 
 unsigned long DEBUGCTLMSR_BTINT ; 
 unsigned long DEBUGCTLMSR_BTS ; 
 unsigned long DEBUGCTLMSR_BTS_OFF_OS ; 
 unsigned long DEBUGCTLMSR_BTS_OFF_USR ; 
 unsigned long DEBUGCTLMSR_TR ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

void FUNC2(u64 config)
{
	unsigned long debugctlmsr;

	debugctlmsr = FUNC0();

	debugctlmsr |= DEBUGCTLMSR_TR;
	debugctlmsr |= DEBUGCTLMSR_BTS;
	debugctlmsr |= DEBUGCTLMSR_BTINT;

	if (!(config & ARCH_PERFMON_EVENTSEL_OS))
		debugctlmsr |= DEBUGCTLMSR_BTS_OFF_OS;

	if (!(config & ARCH_PERFMON_EVENTSEL_USR))
		debugctlmsr |= DEBUGCTLMSR_BTS_OFF_USR;

	FUNC1(debugctlmsr);
}