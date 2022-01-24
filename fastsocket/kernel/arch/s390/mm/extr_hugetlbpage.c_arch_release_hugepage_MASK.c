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
struct page {scalar_t__ index; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 scalar_t__ MACHINE_HAS_HPAGE ; 
 int PTRS_PER_PTE ; 
 int /*<<< orphan*/  _PAGE_TYPE_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  init_mm ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(struct page *page)
{
	pte_t *ptep;

	if (MACHINE_HAS_HPAGE)
		return;

	ptep = (pte_t *) page[1].index;
	if (!ptep)
		return;
	FUNC0((unsigned long *) ptep, _PAGE_TYPE_EMPTY,
		    PTRS_PER_PTE * sizeof(pte_t));
	FUNC1(&init_mm, ptep);
	page[1].index = 0;
}