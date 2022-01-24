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
struct address_space {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct address_space*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 struct address_space* FUNC5 (struct page*) ; 

void FUNC6(struct page *page)
{
	struct address_space *mapping = FUNC5(page);
	unsigned long addr;

	if (FUNC0(page))
		return;
	if (mapping && !FUNC3(mapping)) {
		FUNC1(page);
		return;
	}

	/*
	 * We could delay the flush for the !page_mapping case too.  But that
	 * case is for exec env/arg pages and those are %99 certainly going to
	 * get faulted into the tlb (and thus flushed) anyways.
	 */
	addr = (unsigned long) FUNC4(page);
	FUNC2(addr);
}