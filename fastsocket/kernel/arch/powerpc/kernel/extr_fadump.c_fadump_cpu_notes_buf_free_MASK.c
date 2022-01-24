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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,unsigned long) ; 
 unsigned long FUNC2 (unsigned long) ; 
 struct page* FUNC3 (unsigned long) ; 

__attribute__((used)) static void FUNC4(unsigned long vaddr, unsigned long size)
{
	struct page *page;
	unsigned long order, count, i;

	order = FUNC2(size);
	count = 1 << order;
	page = FUNC3(vaddr);
	for (i = 0; i < count; i++)
		FUNC0(page + i);
	FUNC1(page, order);
}