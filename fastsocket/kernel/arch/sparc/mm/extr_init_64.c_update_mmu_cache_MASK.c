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
struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct tsb {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; TYPE_1__* tsb_block; } ;
struct mm_struct {TYPE_2__ context; } ;
typedef  int /*<<< orphan*/  pte_t ;
struct TYPE_3__ {unsigned long tsb_nentries; struct tsb* tsb; } ;

/* Variables and functions */
 unsigned long HPAGE_SHIFT ; 
 unsigned long MM_TSB_BASE ; 
 size_t MM_TSB_HUGE ; 
 unsigned long PAGE_SHIFT ; 
 int _PAGE_SZALL_4U ; 
 int _PAGE_SZALL_4V ; 
 int _PAGE_SZHUGE_4U ; 
 int _PAGE_SZHUGE_4V ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 scalar_t__ hypervisor ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ tlb_type ; 
 int /*<<< orphan*/  FUNC6 (struct tsb*,unsigned long,int) ; 

void FUNC7(struct vm_area_struct *vma, unsigned long address, pte_t pte)
{
	struct mm_struct *mm;
	struct tsb *tsb;
	unsigned long tag, flags;
	unsigned long tsb_index, tsb_hash_shift;

	if (tlb_type != hypervisor) {
		unsigned long pfn = FUNC2(pte);

		if (FUNC1(pfn))
			FUNC0(pfn);
	}

	mm = vma->vm_mm;

	tsb_index = MM_TSB_BASE;
	tsb_hash_shift = PAGE_SHIFT;

	FUNC4(&mm->context.lock, flags);

#ifdef CONFIG_HUGETLB_PAGE
	if (mm->context.tsb_block[MM_TSB_HUGE].tsb != NULL) {
		if ((tlb_type == hypervisor &&
		     (pte_val(pte) & _PAGE_SZALL_4V) == _PAGE_SZHUGE_4V) ||
		    (tlb_type != hypervisor &&
		     (pte_val(pte) & _PAGE_SZALL_4U) == _PAGE_SZHUGE_4U)) {
			tsb_index = MM_TSB_HUGE;
			tsb_hash_shift = HPAGE_SHIFT;
		}
	}
#endif

	tsb = mm->context.tsb_block[tsb_index].tsb;
	tsb += ((address >> tsb_hash_shift) &
		(mm->context.tsb_block[tsb_index].tsb_nentries - 1UL));
	tag = (address >> 22UL);
	FUNC6(tsb, tag, FUNC3(pte));

	FUNC5(&mm->context.lock, flags);
}