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
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  __KM_CACHE ; 
 unsigned long FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,scalar_t__) ; 
 void* FUNC4 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 

void FUNC6(struct page *page)
{
	unsigned long dampr2;
	void *vaddr;

	dampr2 = FUNC0(2);

	vaddr = FUNC4(page, __KM_CACHE);

	FUNC3((unsigned long) vaddr, (unsigned long) vaddr + PAGE_SIZE);

	FUNC5(vaddr, __KM_CACHE);

	if (dampr2) {
		FUNC1(2, dampr2);
		FUNC2(2, dampr2);
	}

}