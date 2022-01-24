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
typedef  int /*<<< orphan*/  isolate_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISOLATE_NG ; 
 int /*<<< orphan*/  ISOLATE_NONE ; 
 int /*<<< orphan*/  ISOLATE_OK ; 
 int MAX_PAGE_ISOLATE ; 
 unsigned long PAGE_SHIFT ; 
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int num_page_isolate ; 
 struct page** page_isolate ; 
 struct page* FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 

__attribute__((used)) static isolate_status_t
FUNC7(unsigned long paddr)
{
	int i;
	struct page *p;

	/* whether physical address is valid or not */
	if (!FUNC4(paddr))
		return ISOLATE_NONE;

	if (!FUNC6(paddr >> PAGE_SHIFT))
		return ISOLATE_NONE;

	/* convert physical address to physical page number */
	p = FUNC5(paddr>>PAGE_SHIFT);

	/* check whether a page number have been already registered or not */
	for (i = 0; i < num_page_isolate; i++)
		if (page_isolate[i] == p)
			return ISOLATE_OK; /* already listed */

	/* limitation check */
	if (num_page_isolate == MAX_PAGE_ISOLATE)
		return ISOLATE_NG;

	/* kick pages having attribute 'SLAB' or 'Reserved' */
	if (FUNC1(p) || FUNC0(p))
		return ISOLATE_NG;

	/* add attribute 'Reserved' and register the page */
	FUNC3(p);
	FUNC2(p);
	page_isolate[num_page_isolate++] = p;

	return ISOLATE_OK;
}