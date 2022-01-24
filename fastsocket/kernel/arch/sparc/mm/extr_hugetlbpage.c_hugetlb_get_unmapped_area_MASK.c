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
struct vm_area_struct {unsigned long vm_start; } ;
struct mm_struct {scalar_t__ get_unmapped_area; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long EINVAL ; 
 unsigned long ENOMEM ; 
 unsigned long HPAGE_MASK ; 
 int /*<<< orphan*/  HPAGE_SIZE ; 
 unsigned long MAP_FIXED ; 
 unsigned long STACK_TOP32 ; 
 unsigned long TASK_SIZE ; 
 int /*<<< orphan*/  TIF_32BIT ; 
 scalar_t__ arch_get_unmapped_area ; 
 TYPE_1__* current ; 
 struct vm_area_struct* FUNC1 (struct mm_struct*,unsigned long) ; 
 unsigned long FUNC2 (struct file*,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 unsigned long FUNC3 (struct file*,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 scalar_t__ FUNC4 (struct file*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

unsigned long
FUNC6(struct file *file, unsigned long addr,
		unsigned long len, unsigned long pgoff, unsigned long flags)
{
	struct mm_struct *mm = current->mm;
	struct vm_area_struct *vma;
	unsigned long task_size = TASK_SIZE;

	if (FUNC5(TIF_32BIT))
		task_size = STACK_TOP32;

	if (len & ~HPAGE_MASK)
		return -EINVAL;
	if (len > task_size)
		return -ENOMEM;

	if (flags & MAP_FIXED) {
		if (FUNC4(file, addr, len))
			return -EINVAL;
		return addr;
	}

	if (addr) {
		addr = FUNC0(addr, HPAGE_SIZE);
		vma = FUNC1(mm, addr);
		if (task_size - len >= addr &&
		    (!vma || addr + len <= vma->vm_start))
			return addr;
	}
	if (mm->get_unmapped_area == arch_get_unmapped_area)
		return FUNC2(file, addr, len,
				pgoff, flags);
	else
		return FUNC3(file, addr, len,
				pgoff, flags);
}