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
struct page {int /*<<< orphan*/  flags; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PG_dcache_dirty ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct address_space*,struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct address_space*,struct page*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct address_space*) ; 
 struct address_space* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(struct page *page)
{
	struct address_space *mapping = FUNC6(page);

#ifndef CONFIG_SMP
	if (!FUNC0(page) && mapping && !FUNC5(mapping))
		FUNC7(PG_dcache_dirty, &page->flags);
	else
#endif
	{
		FUNC2(mapping, page);
		if (mapping && FUNC4())
			FUNC1(mapping, page);
		else if (mapping)
			FUNC3();
	}
}