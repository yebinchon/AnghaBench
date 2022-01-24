#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;
struct TYPE_5__ {int /*<<< orphan*/  pte; } ;
typedef  TYPE_1__ pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  _PAGE_BIT_ACCESSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long,TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned long*) ; 

int FUNC3(struct vm_area_struct *vma,
			      unsigned long addr, pte_t *ptep)
{
	int ret = 0;

	if (FUNC1(*ptep))
		ret = FUNC2(_PAGE_BIT_ACCESSED,
					 (unsigned long *) &ptep->pte);

	if (ret)
		FUNC0(vma->vm_mm, addr, ptep);

	return ret;
}