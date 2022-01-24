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
struct vm_area_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  cpumask_t ;
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  INVALIDATE_TLB_IPI ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_online_map ; 
 unsigned long* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flush_cpumask ; 
 struct mm_struct* flush_mm ; 
 unsigned long flush_va ; 
 struct vm_area_struct* flush_vma ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tlbstate_lock ; 

__attribute__((used)) static void FUNC13(cpumask_t cpumask, struct mm_struct *mm,
	struct vm_area_struct *vma, unsigned long va)
{
	unsigned long *mask;
#ifdef DEBUG_SMP
	unsigned long flags;
	__save_flags(flags);
	if (!(flags & 0x0040))	/* Interrupt Disable NONONO */
		BUG();
#endif /* DEBUG_SMP */

	/*
	 * A couple of (to be removed) sanity checks:
	 *
	 * - we do not send IPIs to not-yet booted CPUs.
	 * - current CPU must not be in mask
	 * - mask must exist :)
	 */
	FUNC1(FUNC7(cpumask));

	FUNC1(FUNC4(FUNC10(), cpumask));
	FUNC1(!mm);

	/* If a CPU which we ran on has gone down, OK. */
	FUNC6(cpumask, cpumask, cpu_online_map);
	if (FUNC7(cpumask))
		return;

	/*
	 * i'm not happy about this global shared spinlock in the
	 * MM hot path, but we'll see how contended it is.
	 * Temporarily this turns IRQs off, so that lockups are
	 * detected by the NMI watchdog.
	 */
	FUNC11(&tlbstate_lock);

	flush_mm = mm;
	flush_vma = vma;
	flush_va = va;
	mask=FUNC5(cpumask);
	FUNC3(*mask, (atomic_t *)&flush_cpumask);

	/*
	 * We have to send the IPI only to
	 * CPUs affected.
	 */
	FUNC9(&cpumask, INVALIDATE_TLB_IPI, 0);

	while (!FUNC7(flush_cpumask)) {
		/* nothing. lockup detection does not belong here */
		FUNC8();
	}

	flush_mm = NULL;
	flush_vma = NULL;
	flush_va = 0;
	FUNC12(&tlbstate_lock);
}