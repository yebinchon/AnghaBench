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
typedef  int u64 ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int EFI_MEMORY_UC ; 
 int EFI_MEMORY_WB ; 
 unsigned long PAGE_SHIFT ; 
 int FUNC0 (unsigned long,unsigned long) ; 
 int FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

pgprot_t
FUNC4(struct file *file, unsigned long pfn, unsigned long size,
		     pgprot_t vma_prot)
{
	unsigned long phys_addr = pfn << PAGE_SHIFT;
	u64 attr;

	/*
	 * For /dev/mem mmap, we use user mappings, but if the region is
	 * in kern_memmap (and hence may be covered by a kernel mapping),
	 * we must use the same attribute as the kernel mapping.
	 */
	attr = FUNC1(phys_addr, size);
	if (attr & EFI_MEMORY_WB)
		return FUNC2(vma_prot);
	else if (attr & EFI_MEMORY_UC)
		return FUNC3(vma_prot);

	/*
	 * Some chipsets don't support UC access to memory.  If
	 * WB is supported, we prefer that.
	 */
	if (FUNC0(phys_addr, size) & EFI_MEMORY_WB)
		return FUNC2(vma_prot);

	return FUNC3(vma_prot);
}