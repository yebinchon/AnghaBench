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
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 void* FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 (struct page*) ; 

void *FUNC5(struct page *page)
{
	void *addr;

	FUNC3();
	if (!FUNC0(page))
		return FUNC4(page);
	addr = FUNC2(page);
	FUNC1((unsigned long)addr);

	return addr;
}