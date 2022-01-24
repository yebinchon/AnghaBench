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
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 unsigned long HPTE_R_N ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  PG_arch_1 ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct page* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC8(unsigned long rflags,
					pte_t pte, int trap, unsigned long sz)
{
	struct page *page;
	int i;

	if (!FUNC3(FUNC5(pte)))
		return rflags;

	page = FUNC4(pte);

	/* page is dirty */
	if (!FUNC7(PG_arch_1, &page->flags) && !FUNC0(page)) {
		if (trap == 0x400) {
			for (i = 0; i < (sz / PAGE_SIZE); i++)
				FUNC1(FUNC2(page+i));
			FUNC6(PG_arch_1, &page->flags);
		} else {
			rflags |= HPTE_R_N;
		}
	}
	return rflags;
}