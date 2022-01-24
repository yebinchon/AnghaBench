#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int dummy; } ;
struct kvm {int dummy; } ;
typedef  int /*<<< orphan*/  pfn_t ;
typedef  int /*<<< orphan*/  gfn_t ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 unsigned long FUNC0 (int) ; 
 int KVM_NR_PAGE_SIZES ; 
 unsigned long PAGE_SIZE ; 
 int PT_PAGE_TABLE_LEVEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vm_area_struct* FUNC3 (TYPE_1__*,unsigned long) ; 
 unsigned long FUNC4 (struct kvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC12 (struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC13(struct kvm *kvm, gfn_t gfn)
{
	unsigned long page_size = PAGE_SIZE;
	struct vm_area_struct *vma;
	unsigned long addr;
	int i, ret = 0;

	addr = FUNC4(kvm, gfn);
	if (FUNC7(addr))
		return PT_PAGE_TABLE_LEVEL;

	FUNC2(&current->mm->mmap_sem);
	vma = FUNC3(current->mm, addr);
	if (!vma)
		goto out;

	page_size = FUNC12(vma);

out:
	FUNC11(&current->mm->mmap_sem);

	/* check for transparent hugepages */
	if (page_size == PAGE_SIZE) {
		pfn_t pfn = FUNC5(kvm, addr);

		if (!FUNC6(pfn) && !FUNC8(pfn) &&
		    FUNC1(FUNC10(pfn)))
			page_size = FUNC0(2);
		FUNC9(pfn);
	}

	for (i = PT_PAGE_TABLE_LEVEL;
	     i < (PT_PAGE_TABLE_LEVEL + KVM_NR_PAGE_SIZES); ++i) {
		if (page_size >= FUNC0(i))
			ret = i;
		else
			break;
	}

	return ret;
}