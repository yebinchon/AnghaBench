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
struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; } ;
typedef  int /*<<< orphan*/  resource_size_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ,unsigned long*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct vm_area_struct*) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,int) ; 

int FUNC5(struct vm_area_struct *vma)
{
	resource_size_t paddr;
	unsigned long prot;
	unsigned long vma_size = vma->vm_end - vma->vm_start;
	pgprot_t pgprot;

	if (FUNC3(vma)) {
		/*
		 * reserve the whole chunk covered by vma. We need the
		 * starting address and protection from pte.
		 */
		if (FUNC2(vma, vma->vm_start, 0, &prot, &paddr)) {
			FUNC0(1);
			return -EINVAL;
		}
		pgprot = FUNC1(prot);
		return FUNC4(paddr, vma_size, &pgprot, 1);
	}

	return 0;
}