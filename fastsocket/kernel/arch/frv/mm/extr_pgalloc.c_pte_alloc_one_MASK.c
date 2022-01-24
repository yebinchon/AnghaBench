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
 int GFP_KERNEL ; 
 int __GFP_HIGHMEM ; 
 int __GFP_REPEAT ; 
 struct page* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 

pgtable_t FUNC4(struct mm_struct *mm, unsigned long address)
{
	struct page *page;

#ifdef CONFIG_HIGHPTE
	page = alloc_pages(GFP_KERNEL|__GFP_HIGHMEM|__GFP_REPEAT, 0);
#else
	page = FUNC0(GFP_KERNEL|__GFP_REPEAT, 0);
#endif
	if (page) {
		FUNC1(page);
		FUNC3(page);
		FUNC2(page);
	}
	return page;
}