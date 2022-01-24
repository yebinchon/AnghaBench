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
struct page {void* shadow; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 struct page* FUNC2 (unsigned long) ; 

void *FUNC3(unsigned long address)
{
	pte_t *pte;
	struct page *page;

	if (!FUNC1(address))
		return NULL;

	pte = FUNC0(address);
	if (!pte)
		return NULL;

	page = FUNC2(address);
	if (!page->shadow)
		return NULL;
	return page->shadow + (address & (PAGE_SIZE - 1));
}