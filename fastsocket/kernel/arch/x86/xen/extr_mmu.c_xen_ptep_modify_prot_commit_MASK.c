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
struct mmu_update {int ptr; int /*<<< orphan*/  val; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;
struct TYPE_2__ {int maddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int MMU_PT_UPDATE_PRESERVE_AD ; 
 scalar_t__ PARAVIRT_LAZY_MMU ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  prot_commit ; 
 int /*<<< orphan*/  prot_commit_batched ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mmu_update*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

void FUNC7(struct mm_struct *mm, unsigned long addr,
				 pte_t *ptep, pte_t pte)
{
	struct mmu_update u;

	FUNC5();

	u.ptr = FUNC1(ptep).maddr | MMU_PT_UPDATE_PRESERVE_AD;
	u.val = FUNC3(pte);
	FUNC4(&u);

	FUNC0(prot_commit, 1);
	FUNC0(prot_commit_batched, FUNC2() == PARAVIRT_LAZY_MMU);

	FUNC6(PARAVIRT_LAZY_MMU);
}