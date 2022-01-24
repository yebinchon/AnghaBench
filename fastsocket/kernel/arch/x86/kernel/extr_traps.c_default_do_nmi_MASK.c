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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIE_NMI ; 
 int /*<<< orphan*/  DIE_NMI_IPI ; 
 scalar_t__ NOTIFY_STOP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*,int) ; 
 unsigned char FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,struct pt_regs*) ; 
 scalar_t__ FUNC4 (struct pt_regs*,unsigned char) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,struct pt_regs*,unsigned char,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (unsigned char,struct pt_regs*) ; 

void FUNC9(struct pt_regs *regs)
{
	unsigned char reason = 0;
	int cpu;

	cpu = FUNC7();

	/* Only the BSP gets external NMIs from the system. */
	if (!cpu)
		reason = FUNC1();

	if (!(reason & 0xc0)) {
		if (FUNC5(DIE_NMI_IPI, "nmi_ipi", regs, reason, 2, SIGINT)
								== NOTIFY_STOP)
			return;

#ifdef CONFIG_X86_LOCAL_APIC
		if (notify_die(DIE_NMI, "nmi", regs, reason, 2, SIGINT)
							== NOTIFY_STOP)
			return;

#ifndef CONFIG_LOCKUP_DETECTOR
		/*
		 * Ok, so this is none of the documented NMI sources,
		 * so it must be the NMI watchdog.
		 */
		if (nmi_watchdog_tick(regs, reason))
			return;
		if (!do_nmi_callback(regs, cpu))
#endif /* !CONFIG_LOCKUP_DETECTOR */
			unknown_nmi_error(reason, regs);
#else
		FUNC8(reason, regs);
#endif

		return;
	}
	if (FUNC5(DIE_NMI, "nmi", regs, reason, 2, SIGINT) == NOTIFY_STOP)
		return;

	/* AK: following checks seem to be broken on modern chipsets. FIXME */
	if (reason & 0x80)
		FUNC3(reason, regs);
	if (reason & 0x40)
		FUNC2(reason, regs);
#ifdef CONFIG_X86_32
	/*
	 * Reassert NMI in case it became active meanwhile
	 * as it's edge-triggered:
	 */
	reassert_nmi();
#endif
}