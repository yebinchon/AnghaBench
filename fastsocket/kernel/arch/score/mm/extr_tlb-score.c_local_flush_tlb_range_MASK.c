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
struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {unsigned long context; } ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;

/* Variables and functions */
 unsigned long ASID_MASK ; 
 unsigned long KSEG1 ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int TLBSIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 () ; 

void FUNC10(struct vm_area_struct *vma, unsigned long start,
	unsigned long end)
{
	struct mm_struct *mm = vma->vm_mm;
	unsigned long vma_mm_context = mm->context;
	if (mm->context != 0) {
		unsigned long flags;
		int size;

		FUNC3(flags);
		size = (end - start + (PAGE_SIZE - 1)) >> PAGE_SHIFT;
		if (size <= TLBSIZE) {
			int oldpid = FUNC5() & ASID_MASK;
			int newpid = vma_mm_context & ASID_MASK;

			start &= PAGE_MASK;
			end += (PAGE_SIZE - 1);
			end &= PAGE_MASK;
			while (start < end) {
				int idx;

				FUNC6(start | newpid);
				start += PAGE_SIZE;
				FUNC0();
				FUNC7();
				idx = FUNC9();
				FUNC4(0);
				FUNC6(KSEG1);
				if (idx < 0)
					continue;
				FUNC8();
			}
			FUNC6(oldpid);
		} else {
			/* Bigger than TLBSIZE, get new ASID directly */
			FUNC1(mm);
			if (mm == current->active_mm)
				FUNC6(vma_mm_context & ASID_MASK);
		}
		FUNC2(flags);
	}
}