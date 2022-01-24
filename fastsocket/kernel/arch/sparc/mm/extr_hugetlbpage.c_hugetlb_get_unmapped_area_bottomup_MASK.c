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
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long ENOMEM ; 
 int /*<<< orphan*/  HPAGE_SIZE ; 
 unsigned long STACK_TOP32 ; 
 unsigned long TASK_SIZE ; 
 unsigned long TASK_UNMAPPED_BASE ; 
 int /*<<< orphan*/  TIF_32BIT ; 
 unsigned long VA_EXCLUDE_END ; 
 unsigned long VA_EXCLUDE_START ; 
 TYPE_1__* current ; 
 struct vm_area_struct* FUNC1 (struct mm_struct*,unsigned long) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static unsigned long FUNC5(struct file *filp,
							unsigned long addr,
							unsigned long len,
							unsigned long pgoff,
							unsigned long flags)
{
	struct mm_struct *mm = current->mm;
	struct vm_area_struct * vma;
	unsigned long task_size = TASK_SIZE;
	unsigned long start_addr;

	if (FUNC3(TIF_32BIT))
		task_size = STACK_TOP32;
	if (FUNC4(len >= VA_EXCLUDE_START))
		return -ENOMEM;

	if (len > mm->cached_hole_size) {
	        start_addr = addr = mm->free_area_cache;
	} else {
	        start_addr = addr = TASK_UNMAPPED_BASE;
	        mm->cached_hole_size = 0;
	}

	task_size -= len;

full_search:
	addr = FUNC0(addr, HPAGE_SIZE);

	for (vma = FUNC1(mm, addr); ; vma = vma->vm_next) {
		/* At this point:  (!vma || addr < vma->vm_end). */
		if (addr < VA_EXCLUDE_START &&
		    (addr + len) >= VA_EXCLUDE_START) {
			addr = VA_EXCLUDE_END;
			vma = FUNC1(mm, VA_EXCLUDE_END);
		}
		if (FUNC4(task_size < addr)) {
			if (start_addr != TASK_UNMAPPED_BASE) {
				start_addr = addr = TASK_UNMAPPED_BASE;
				mm->cached_hole_size = 0;
				goto full_search;
			}
			return -ENOMEM;
		}
		if (FUNC2(!vma || addr + len <= vma->vm_start)) {
			/*
			 * Remember the place where we stopped the search:
			 */
			mm->free_area_cache = addr + len;
			return addr;
		}
		if (addr + mm->cached_hole_size < vma->vm_start)
		        mm->cached_hole_size = vma->vm_start - addr;

		addr = FUNC0(vma->vm_end, HPAGE_SIZE);
	}
}