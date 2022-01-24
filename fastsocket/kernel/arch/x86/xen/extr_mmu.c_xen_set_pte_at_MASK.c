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
struct multicall_space {int /*<<< orphan*/  mc; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ PARAVIRT_LAZY_MMU ; 
 TYPE_1__* current ; 
 struct mm_struct init_mm ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  set_pte_at ; 
 int /*<<< orphan*/  set_pte_at_batched ; 
 int /*<<< orphan*/  set_pte_at_current ; 
 int /*<<< orphan*/  set_pte_at_kernel ; 
 struct multicall_space FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC7(struct mm_struct *mm, unsigned long addr,
		    pte_t *ptep, pte_t pteval)
{
	FUNC0(set_pte_at, 1);
//	ADD_STATS(set_pte_at_pinned, xen_page_pinned(ptep));
	FUNC0(set_pte_at_current, mm == current->mm);
	FUNC0(set_pte_at_kernel, mm == &init_mm);

	if (mm == current->mm || mm == &init_mm) {
		if (FUNC3() == PARAVIRT_LAZY_MMU) {
			struct multicall_space mcs;
			mcs = FUNC4(0);

			FUNC2(mcs.mc, addr, pteval, 0);
			FUNC0(set_pte_at_batched, 1);
			FUNC5(PARAVIRT_LAZY_MMU);
			goto out;
		} else
			if (FUNC1(addr, pteval, 0) == 0)
				goto out;
	}
	FUNC6(ptep, pteval);

out:	return;
}