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
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 scalar_t__ ARCH_SUN4C ; 
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long EINVAL ; 
 unsigned long ENOMEM ; 
 unsigned long MAP_FIXED ; 
 unsigned long MAP_SHARED ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long PAGE_OFFSET ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 int SHMLBA ; 
 unsigned long TASK_SIZE ; 
 unsigned long TASK_UNMAPPED_BASE ; 
 TYPE_1__* current ; 
 struct vm_area_struct* FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 

unsigned long FUNC3(struct file *filp, unsigned long addr, unsigned long len, unsigned long pgoff, unsigned long flags)
{
	struct vm_area_struct * vmm;

	if (flags & MAP_FIXED) {
		/* We do not accept a shared mapping if it would violate
		 * cache aliasing constraints.
		 */
		if ((flags & MAP_SHARED) &&
		    ((addr - (pgoff << PAGE_SHIFT)) & (SHMLBA - 1)))
			return -EINVAL;
		return addr;
	}

	/* See asm-sparc/uaccess.h */
	if (len > TASK_SIZE - PAGE_SIZE)
		return -ENOMEM;
	if (ARCH_SUN4C && len > 0x20000000)
		return -ENOMEM;
	if (!addr)
		addr = TASK_UNMAPPED_BASE;

	if (flags & MAP_SHARED)
		addr = FUNC0(addr);
	else
		addr = FUNC1(addr);

	for (vmm = FUNC2(current->mm, addr); ; vmm = vmm->vm_next) {
		/* At this point:  (!vmm || addr < vmm->vm_end). */
		if (ARCH_SUN4C && addr < 0xe0000000 && 0x20000000 - len < addr) {
			addr = PAGE_OFFSET;
			vmm = FUNC2(current->mm, PAGE_OFFSET);
		}
		if (TASK_SIZE - PAGE_SIZE - len < addr)
			return -ENOMEM;
		if (!vmm || addr + len <= vmm->vm_start)
			return addr;
		addr = vmm->vm_end;
		if (flags & MAP_SHARED)
			addr = FUNC0(addr);
	}
}