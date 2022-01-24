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
struct pt_regs {scalar_t__ orig_p0; } ;
struct ipipe_percpu_domain_data {int irqpend_himask; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPIPE_EVENT_SYSCALL ; 
 int IPIPE_IRQMASK_VIRT ; 
 scalar_t__ NR_syscalls ; 
 int PF_EVNOTIFY ; 
 int FUNC0 (int /*<<< orphan*/ ,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __ipipe_irq_tail_hook ; 
 int /*<<< orphan*/  __ipipe_root_domain_p ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* current ; 
 struct ipipe_percpu_domain_data* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

int FUNC6(struct pt_regs *regs)
{
	struct ipipe_percpu_domain_data *p;
	unsigned long flags;
	int ret;

	/*
	 * We need to run the IRQ tail hook whenever we don't
	 * propagate a syscall to higher domains, because we know that
	 * important operations might be pending there (e.g. Xenomai
	 * deferred rescheduling).
	 */

	if (regs->orig_p0 < NR_syscalls) {
		void (*hook)(void) = (void (*)(void))__ipipe_irq_tail_hook;
		hook();
		if ((current->flags & PF_EVNOTIFY) == 0)
			return 0;
	}

	/*
	 * This routine either returns:
	 * 0 -- if the syscall is to be passed to Linux;
	 * >0 -- if the syscall should not be passed to Linux, and no
	 * tail work should be performed;
	 * <0 -- if the syscall should not be passed to Linux but the
	 * tail work has to be performed (for handling signals etc).
	 */

	if (!FUNC1(IPIPE_EVENT_SYSCALL))
		return 0;

	ret = FUNC0(IPIPE_EVENT_SYSCALL, regs);

	FUNC5(flags);

	if (!__ipipe_root_domain_p) {
		FUNC4(flags);
		return 1;
	}

	p = FUNC3();
	if ((p->irqpend_himask & IPIPE_IRQMASK_VIRT) != 0)
		FUNC2(IPIPE_IRQMASK_VIRT);

	FUNC4(flags);

	return -ret;
}