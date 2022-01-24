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
struct vm_area_struct {int vm_flags; struct mm_struct* vm_mm; } ;
struct mm_struct {scalar_t__ context; } ;

/* Variables and functions */
 scalar_t__ NO_CONTEXT ; 
 int VM_EXEC ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6 (struct vm_area_struct *vma, unsigned long page)
{
	struct mm_struct* mm = vma->vm_mm;
	unsigned long flags;
	int oldpid;

	if(mm->context == NO_CONTEXT)
		return;

	FUNC4(flags);

       	oldpid = FUNC0();

	if (vma->vm_flags & VM_EXEC)
		FUNC2(page);
	FUNC1(page);

	FUNC5(oldpid);

	FUNC3(flags);
}