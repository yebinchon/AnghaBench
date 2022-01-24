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
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef  struct page* pgtable_t ;

/* Variables and functions */
 int /*<<< orphan*/  __userpte_alloc_gfp ; 
 struct page* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 

pgtable_t FUNC2(struct mm_struct *mm, unsigned long address)
{
	struct page *pte;

	pte = FUNC0(__userpte_alloc_gfp, 0);
	if (pte)
		FUNC1(pte);
	return pte;
}