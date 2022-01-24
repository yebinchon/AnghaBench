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
 unsigned long ENOMEM ; 
 unsigned long MAP_32BIT ; 
 unsigned long MAP_FIXED ; 
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  TIF_IA32 ; 
 unsigned long FUNC1 (unsigned long,struct file*,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long*,unsigned long*) ; 
 struct vm_area_struct* FUNC3 (struct mm_struct*,unsigned long) ; 
 scalar_t__ FUNC4 (int) ; 
 unsigned long mmap_min_addr ; 
 unsigned int sysctl_unmap_area_factor ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

unsigned long
FUNC6(struct file *filp, unsigned long addr,
		unsigned long len, unsigned long pgoff, unsigned long flags)
{
	struct mm_struct *mm = current->mm;
	struct vm_area_struct *vma;
	unsigned long start_addr;
	unsigned long begin, end;
	unsigned int unmap_factor = sysctl_unmap_area_factor;

	if (flags & MAP_FIXED)
		return addr;

	FUNC2(flags, &begin, &end);

	if (len > end)
		return -ENOMEM;

	if (addr) {
		addr = FUNC0(addr);
		vma = FUNC3(mm, addr);
		if (end - len >= addr &&
		    (!vma || addr + len <= vma->vm_start) &&
		    (addr >= mmap_min_addr))
			return addr;
	}
	if (((flags & MAP_32BIT) || FUNC5(TIF_IA32))) {
		if (!unmap_factor && len <= mm->cached_hole_size)
			mm->cached_hole_size = 0;
		mm->free_area_cache = begin;
	}
	addr = mm->free_area_cache;
	if (addr < begin)
		addr = begin;
	start_addr = addr;

full_search:

	addr = FUNC1(addr, filp, 0);

	for (vma = FUNC3(mm, addr); ; vma = vma->vm_next) {
		/* At this point:  (!vma || addr < vma->vm_end). */
		if (end - len < addr) {
			/*
			 * Start a new search - just in case we missed
			 * some holes.
			 */
			if (start_addr != begin) {
				start_addr = addr = begin;
				if (FUNC4(!unmap_factor))
					mm->cached_hole_size = 0;
				goto full_search;
			}
			return -ENOMEM;
		}
		if (!vma || addr + len <= vma->vm_start) {
			/*
			 * Remember the place where we stopped the search:
			 */
			mm->free_area_cache = addr + len;
			return addr;
		}
		if (!unmap_factor &&
				addr + mm->cached_hole_size < vma->vm_start)
			mm->cached_hole_size = vma->vm_start - addr;

		addr = vma->vm_end;
		addr = FUNC1(addr, filp, 0);
	}
}