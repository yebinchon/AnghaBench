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
struct page {unsigned long index; } ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 struct page* pgd_list ; 
 int /*<<< orphan*/  FUNC0 (struct page*,unsigned long) ; 
 struct page* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(pgd_t *pgd)
{
	struct page *page = FUNC1(pgd);
	page->index = (unsigned long) pgd_list;
	if (pgd_list)
		FUNC0(pgd_list, (unsigned long) &page->index);
	pgd_list = page;
	FUNC0(page, (unsigned long) &pgd_list);
}