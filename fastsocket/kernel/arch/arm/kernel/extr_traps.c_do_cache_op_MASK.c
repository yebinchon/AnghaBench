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
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;

/* Variables and functions */
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vm_area_struct* FUNC1 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC4(unsigned long start, unsigned long end, int flags)
{
	struct mm_struct *mm = current->active_mm;
	struct vm_area_struct *vma;

	if (end < start || flags)
		return;

	FUNC0(&mm->mmap_sem);
	vma = FUNC1(mm, start);
	if (vma && vma->vm_start < end) {
		if (start < vma->vm_start)
			start = vma->vm_start;
		if (end > vma->vm_end)
			end = vma->vm_end;

		FUNC2(vma, start, end);
	}
	FUNC3(&mm->mmap_sem);
}