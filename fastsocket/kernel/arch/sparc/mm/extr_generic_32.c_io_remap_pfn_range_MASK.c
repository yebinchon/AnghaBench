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
struct vm_area_struct {int vm_flags; unsigned long vm_pgoff; struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgprot_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PGDIR_MASK ; 
 unsigned long PGDIR_SIZE ; 
 int VM_IO ; 
 int VM_PFNMAP ; 
 int VM_RESERVED ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*,unsigned long,unsigned long) ; 
 int FUNC4 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/ * FUNC6 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(struct vm_area_struct *vma, unsigned long from,
		       unsigned long pfn, unsigned long size, pgprot_t prot)
{
	int error = 0;
	pgd_t * dir;
	unsigned long beg = from;
	unsigned long end = from + size;
	struct mm_struct *mm = vma->vm_mm;
	int space = FUNC0(pfn);
	unsigned long offset = FUNC1(pfn) << PAGE_SHIFT;

	/* See comment in mm/memory.c remap_pfn_range */
	vma->vm_flags |= VM_IO | VM_RESERVED | VM_PFNMAP;
	vma->vm_pgoff = (offset >> PAGE_SHIFT) |
		((unsigned long)space << 28UL);

	offset -= from;
	dir = FUNC5(mm, from);
	FUNC2(vma, beg, end);

	while (from < end) {
		pmd_t *pmd = FUNC6(mm, dir, from);
		error = -ENOMEM;
		if (!pmd)
			break;
		error = FUNC4(mm, pmd, from, end - from, offset + from, prot, space);
		if (error)
			break;
		from = (from + PGDIR_SIZE) & PGDIR_MASK;
		dir++;
	}

	FUNC3(vma, beg, end);
	return error;
}