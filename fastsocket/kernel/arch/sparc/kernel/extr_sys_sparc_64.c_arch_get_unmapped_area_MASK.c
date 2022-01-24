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
struct mm_struct {unsigned long cached_hole_size; unsigned long free_area_cache; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 unsigned long EINVAL ; 
 unsigned long ENOMEM ; 
 unsigned long MAP_FIXED ; 
 unsigned long MAP_SHARED ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long PAGE_SHIFT ; 
 int SHMLBA ; 
 unsigned long STACK_TOP32 ; 
 unsigned long TASK_SIZE ; 
 unsigned long TASK_UNMAPPED_BASE ; 
 int /*<<< orphan*/  TIF_32BIT ; 
 unsigned long VA_EXCLUDE_END ; 
 unsigned long VA_EXCLUDE_START ; 
 TYPE_1__* current ; 
 struct vm_area_struct* FUNC2 (struct mm_struct*,unsigned long) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

unsigned long FUNC6(struct file *filp, unsigned long addr, unsigned long len, unsigned long pgoff, unsigned long flags)
{
	struct mm_struct *mm = current->mm;
	struct vm_area_struct * vma;
	unsigned long task_size = TASK_SIZE;
	unsigned long start_addr;
	int do_color_align;

	if (flags & MAP_FIXED) {
		/* We do not accept a shared mapping if it would violate
		 * cache aliasing constraints.
		 */
		if ((flags & MAP_SHARED) &&
		    ((addr - (pgoff << PAGE_SHIFT)) & (SHMLBA - 1)))
			return -EINVAL;
		return addr;
	}

	if (FUNC4(TIF_32BIT))
		task_size = STACK_TOP32;
	if (FUNC5(len > task_size || len >= VA_EXCLUDE_START))
		return -ENOMEM;

	do_color_align = 0;
	if (filp || (flags & MAP_SHARED))
		do_color_align = 1;

	if (addr) {
		if (do_color_align)
			addr = FUNC0(addr, pgoff);
		else
			addr = FUNC1(addr);

		vma = FUNC2(mm, addr);
		if (task_size - len >= addr &&
		    (!vma || addr + len <= vma->vm_start))
			return addr;
	}

	if (len > mm->cached_hole_size) {
	        start_addr = addr = mm->free_area_cache;
	} else {
	        start_addr = addr = TASK_UNMAPPED_BASE;
	        mm->cached_hole_size = 0;
	}

	task_size -= len;

full_search:
	if (do_color_align)
		addr = FUNC0(addr, pgoff);
	else
		addr = FUNC1(addr);

	for (vma = FUNC2(mm, addr); ; vma = vma->vm_next) {
		/* At this point:  (!vma || addr < vma->vm_end). */
		if (addr < VA_EXCLUDE_START &&
		    (addr + len) >= VA_EXCLUDE_START) {
			addr = VA_EXCLUDE_END;
			vma = FUNC2(mm, VA_EXCLUDE_END);
		}
		if (FUNC5(task_size < addr)) {
			if (start_addr != TASK_UNMAPPED_BASE) {
				start_addr = addr = TASK_UNMAPPED_BASE;
				mm->cached_hole_size = 0;
				goto full_search;
			}
			return -ENOMEM;
		}
		if (FUNC3(!vma || addr + len <= vma->vm_start)) {
			/*
			 * Remember the place where we stopped the search:
			 */
			mm->free_area_cache = addr + len;
			return addr;
		}
		if (addr + mm->cached_hole_size < vma->vm_start)
		        mm->cached_hole_size = vma->vm_start - addr;

		addr = vma->vm_end;
		if (do_color_align)
			addr = FUNC0(addr, pgoff);
	}
}