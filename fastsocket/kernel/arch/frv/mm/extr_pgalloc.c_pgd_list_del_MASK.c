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
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,unsigned long) ; 
 struct page* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(pgd_t *pgd)
{
	struct page *next, **pprev, *page = FUNC2(pgd);
	next = (struct page *) page->index;
	pprev = (struct page **) FUNC0(page);
	*pprev = next;
	if (next)
		FUNC1(next, (unsigned long) pprev);
}