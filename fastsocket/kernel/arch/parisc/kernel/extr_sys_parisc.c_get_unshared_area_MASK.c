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
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; struct vm_area_struct* vm_next; } ;
struct TYPE_2__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 unsigned long ENOMEM ; 
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long TASK_SIZE ; 
 TYPE_1__* current ; 
 struct vm_area_struct* FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC2(unsigned long addr, unsigned long len)
{
	struct vm_area_struct *vma;

	addr = FUNC0(addr);

	for (vma = FUNC1(current->mm, addr); ; vma = vma->vm_next) {
		/* At this point:  (!vma || addr < vma->vm_end). */
		if (TASK_SIZE - len < addr)
			return -ENOMEM;
		if (!vma || addr + len <= vma->vm_start)
			return addr;
		addr = vma->vm_end;
	}
}