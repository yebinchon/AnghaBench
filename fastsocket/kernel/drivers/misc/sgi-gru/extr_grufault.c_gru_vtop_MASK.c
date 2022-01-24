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
struct gru_thread_state {struct mm_struct* ts_mm; } ;

/* Variables and functions */
 int VTOP_INVALID ; 
 int VTOP_RETRY ; 
 int VTOP_SUCCESS ; 
 int FUNC0 (struct vm_area_struct*,unsigned long,int,unsigned long*,int*) ; 
 struct vm_area_struct* FUNC1 (struct mm_struct*,unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (struct vm_area_struct*,unsigned long,int,unsigned long*,int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 unsigned long FUNC5 (unsigned long) ; 

__attribute__((used)) static int FUNC6(struct gru_thread_state *gts, unsigned long vaddr,
		    int write, int atomic, unsigned long *gpa, int *pageshift)
{
	struct mm_struct *mm = gts->ts_mm;
	struct vm_area_struct *vma;
	unsigned long paddr;
	int ret, ps;

	vma = FUNC1(mm, vaddr);
	if (!vma)
		goto inval;

	/*
	 * Atomic lookup is faster & usually works even if called in non-atomic
	 * context.
	 */
	FUNC4();	/* Must/check ms_range_active before loading PTEs */
	ret = FUNC0(vma, vaddr, write, &paddr, &ps);
	if (ret) {
		if (atomic)
			goto upm;
		if (FUNC3(vma, vaddr, write, &paddr, &ps))
			goto inval;
	}
	if (FUNC2(paddr))
		goto inval;
	paddr = paddr & ~((1UL << ps) - 1);
	*gpa = FUNC5(paddr);
	*pageshift = ps;
	return VTOP_SUCCESS;

inval:
	return VTOP_INVALID;
upm:
	return VTOP_RETRY;
}