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
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 unsigned long MMU_CONTEXT_ASID_MASK ; 
 int MMU_DTLB_ENTRIES ; 
 unsigned long MMU_NO_ASID ; 
 unsigned long NO_CONTEXT ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*) ; 
 TYPE_1__* current ; 
 unsigned long FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

void FUNC6(struct vm_area_struct *vma, unsigned long start,
		     unsigned long end)
{
	struct mm_struct *mm = vma->vm_mm;

	if (mm->context != NO_CONTEXT) {
		unsigned long flags;
		int size;

		FUNC4(flags);
		size = (end - start + (PAGE_SIZE - 1)) >> PAGE_SHIFT;

		if (size > (MMU_DTLB_ENTRIES / 4)) { /* Too many entries to flush */
			mm->context = NO_CONTEXT;
			if (mm == current->mm)
				FUNC1(mm);
		} else {
			unsigned long asid;
			unsigned long saved_asid;

			asid = mm->context & MMU_CONTEXT_ASID_MASK;
			saved_asid = MMU_NO_ASID;

			start &= PAGE_MASK;
			end += (PAGE_SIZE - 1);
			end &= PAGE_MASK;

			if (mm != current->mm) {
				saved_asid = FUNC2();
				FUNC5(asid);
			}

			while (start < end) {
				FUNC0(asid, start);
				start += PAGE_SIZE;
			}
			if (saved_asid != MMU_NO_ASID)
				FUNC5(saved_asid);
		}
		FUNC3(flags);
	}
}