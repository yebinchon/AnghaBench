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
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;
struct TYPE_2__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 unsigned long MMU_NO_ASID ; 
 scalar_t__ NO_CONTEXT ; 
 unsigned long PAGE_MASK ; 
 unsigned long FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 unsigned long FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 unsigned int FUNC7 () ; 

void FUNC8(struct vm_area_struct *vma, unsigned long page)
{
	unsigned int cpu = FUNC7();

	if (vma->vm_mm && FUNC1(cpu, vma->vm_mm) != NO_CONTEXT) {
		unsigned long flags;
		unsigned long asid;
		unsigned long saved_asid = MMU_NO_ASID;

		asid = FUNC0(cpu, vma->vm_mm);
		page &= PAGE_MASK;

		FUNC5(flags);
		if (vma->vm_mm != current->mm) {
			saved_asid = FUNC2();
			FUNC6(asid);
		}
		FUNC3(asid, page);
		if (saved_asid != MMU_NO_ASID)
			FUNC6(saved_asid);
		FUNC4(flags);
	}
}