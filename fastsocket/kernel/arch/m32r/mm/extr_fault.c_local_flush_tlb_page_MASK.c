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
struct vm_area_struct {scalar_t__ vm_mm; } ;

/* Variables and functions */
 unsigned long MMU_CONTEXT_ASID_MASK ; 
 unsigned long NO_CONTEXT ; 
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (scalar_t__) ; 

void FUNC4(struct vm_area_struct *vma, unsigned long page)
{
	if (vma->vm_mm && FUNC3(vma->vm_mm) != NO_CONTEXT) {
		unsigned long flags;

		FUNC2(flags);
		page &= PAGE_MASK;
		page |= (FUNC3(vma->vm_mm) & MMU_CONTEXT_ASID_MASK);
		FUNC0(page);
		FUNC1(flags);
	}
}