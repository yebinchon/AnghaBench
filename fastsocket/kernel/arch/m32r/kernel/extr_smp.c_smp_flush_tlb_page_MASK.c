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
struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {unsigned long* context; } ;
typedef  int /*<<< orphan*/  cpumask_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long MMU_CONTEXT_ASID_MASK ; 
 unsigned long NO_CONTEXT ; 
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mm_struct*,struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/ * FUNC7 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 () ; 

void FUNC11(struct vm_area_struct *vma, unsigned long va)
{
	struct mm_struct *mm = vma->vm_mm;
	int cpu_id;
	cpumask_t cpu_mask;
	unsigned long *mmc;
	unsigned long flags;

	FUNC8();
	cpu_id = FUNC10();
	mmc = &mm->context[cpu_id];
	cpu_mask = *FUNC7(mm);
	FUNC2(cpu_id, cpu_mask);

#ifdef DEBUG_SMP
	if (!mm)
		BUG();
#endif

	if (*mmc != NO_CONTEXT) {
		FUNC6(flags);
		va &= PAGE_MASK;
		va |= (*mmc & MMU_CONTEXT_ASID_MASK);
		FUNC1(va);
		FUNC5(flags);
	}
	if (!FUNC3(cpu_mask))
		FUNC4(cpu_mask, mm, vma, va);

	FUNC9();
}