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
struct pt_regs {int /*<<< orphan*/  cs; void* ip; } ;
struct mce {int mcgstatus; void* ip; int /*<<< orphan*/  cs; } ;

/* Variables and functions */
 int MCG_STATUS_EIPV ; 
 int MCG_STATUS_RIPV ; 
 scalar_t__ MSR_IA32_MCG_STATUS ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct mce*) ; 
 scalar_t__ rip_msr ; 

__attribute__((used)) static inline void FUNC2(struct mce *m, struct pt_regs *regs)
{
	FUNC1(m);

	m->mcgstatus = FUNC0(MSR_IA32_MCG_STATUS);
	if (regs) {
		/*
		 * Get the address of the instruction at the time of
		 * the machine check error.
		 */
		if (m->mcgstatus & (MCG_STATUS_RIPV|MCG_STATUS_EIPV)) {
			m->ip = regs->ip;
			m->cs = regs->cs;
		}
		/* Use accurate RIP reporting if available. */
		if (rip_msr)
			m->ip = FUNC0(rip_msr);
	}
}