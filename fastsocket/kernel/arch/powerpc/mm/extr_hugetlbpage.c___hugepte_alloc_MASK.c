#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mm_struct {int /*<<< orphan*/  page_table_lock; } ;
typedef  int /*<<< orphan*/  pte_t ;
struct TYPE_4__ {unsigned long pd; } ;
typedef  TYPE_1__ hugepd_t ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 unsigned long HUGEPD_OK ; 
 size_t FUNC0 (unsigned int) ; 
 int __GFP_REPEAT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * pgtable_cache ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct mm_struct *mm, hugepd_t *hpdp,
			   unsigned long address, unsigned int psize)
{
	pte_t *new = FUNC3(pgtable_cache[FUNC0(psize)],
				      GFP_KERNEL|__GFP_REPEAT);

	if (! new)
		return -ENOMEM;

	FUNC4(&mm->page_table_lock);
	if (!FUNC1(*hpdp))
		FUNC2(pgtable_cache[FUNC0(psize)], new);
	else
		hpdp->pd = (unsigned long)new | HUGEPD_OK;
	FUNC5(&mm->page_table_lock);
	return 0;
}