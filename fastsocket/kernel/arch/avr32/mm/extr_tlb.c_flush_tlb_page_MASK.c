#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {TYPE_1__* vm_mm; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {unsigned long context; } ;

/* Variables and functions */
 unsigned long MMU_CONTEXT_ASID_MASK ; 
 unsigned long MMU_NO_ASID ; 
 unsigned long NO_CONTEXT ; 
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 TYPE_2__* current ; 
 unsigned long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 

void FUNC5(struct vm_area_struct *vma, unsigned long page)
{
	if (vma->vm_mm && vma->vm_mm->context != NO_CONTEXT) {
		unsigned long flags, asid;
		unsigned long saved_asid = MMU_NO_ASID;

		asid = vma->vm_mm->context & MMU_CONTEXT_ASID_MASK;
		page &= PAGE_MASK;

		FUNC3(flags);
		if (vma->vm_mm != current->mm) {
			saved_asid = FUNC1();
			FUNC4(asid);
		}

		FUNC0(asid, page);

		if (saved_asid != MMU_NO_ASID)
			FUNC4(saved_asid);
		FUNC2(flags);
	}
}