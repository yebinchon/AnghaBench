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
struct thread_struct {int dummy; } ;

/* Variables and functions */
 scalar_t__ PARAVIRT_LAZY_CPU ; 
 int /*<<< orphan*/  fs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct thread_struct*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct thread_struct *t, unsigned int cpu)
{
	/*
	 * XXX sleazy hack: If we're being called in a lazy-cpu zone
	 * and lazy gs handling is enabled, it means we're in a
	 * context switch, and %gs has just been saved.  This means we
	 * can zero it out to prevent faults on exit from the
	 * hypervisor if the next process has no %gs.  Either way, it
	 * has been saved, and the new value will get loaded properly.
	 * This will go away as soon as Xen has been modified to not
	 * save/restore %gs for normal hypercalls.
	 *
	 * On x86_64, this hack is not used for %gs, because gs points
	 * to KERNEL_GS_BASE (and uses it for PDA references), so we
	 * must not zero %gs on x86_64
	 *
	 * For x86_64, we need to zero %fs, otherwise we may get an
	 * exception between the new %fs descriptor being loaded and
	 * %fs being effectively cleared at __switch_to().
	 */
	if (FUNC3() == PARAVIRT_LAZY_CPU) {
#ifdef CONFIG_X86_32
		lazy_load_gs(0);
#else
		FUNC2(fs, 0);
#endif
	}

	FUNC4();

	FUNC1(t, cpu, 0);
	FUNC1(t, cpu, 1);
	FUNC1(t, cpu, 2);

	FUNC5(PARAVIRT_LAZY_CPU);
}