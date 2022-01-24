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
 unsigned long FUNC0 (unsigned long,int) ; 
 unsigned long EINVAL ; 
 unsigned long ENOMEM ; 
 unsigned long HPAGE_MASK ; 
 unsigned long HPAGE_REGION_BASE ; 
 int HPAGE_SIZE ; 
 unsigned long MAP_FIXED ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (unsigned long) ; 
 scalar_t__ RGN_HPAGE ; 
 unsigned long RGN_MAP_LIMIT ; 
 TYPE_1__* current ; 
 struct vm_area_struct* FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC4 (struct file*,unsigned long,unsigned long) ; 

unsigned long FUNC5(struct file *file, unsigned long addr, unsigned long len,
		unsigned long pgoff, unsigned long flags)
{
	struct vm_area_struct *vmm;

	if (len > RGN_MAP_LIMIT)
		return -ENOMEM;
	if (len & ~HPAGE_MASK)
		return -EINVAL;

	/* Handle MAP_FIXED */
	if (flags & MAP_FIXED) {
		if (FUNC4(file, addr, len))
			return -EINVAL;
		return addr;
	}

	/* This code assumes that RGN_HPAGE != 0. */
	if ((FUNC1(addr) != RGN_HPAGE) || (addr & (HPAGE_SIZE - 1)))
		addr = HPAGE_REGION_BASE;
	else
		addr = FUNC0(addr, HPAGE_SIZE);
	for (vmm = FUNC3(current->mm, addr); ; vmm = vmm->vm_next) {
		/* At this point:  (!vmm || addr < vmm->vm_end). */
		if (FUNC2(addr) + len > RGN_MAP_LIMIT)
			return -ENOMEM;
		if (!vmm || (addr + len) <= vmm->vm_start)
			return addr;
		addr = FUNC0(vmm->vm_end, HPAGE_SIZE);
	}
}