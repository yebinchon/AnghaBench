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
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int __GFP_ZERO ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ empty_zero_page ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct page* FUNC3 (void*) ; 

__attribute__((used)) static unsigned long FUNC4(void)
{
	struct page *page;

	empty_zero_page = FUNC1(GFP_KERNEL | __GFP_ZERO, 0);
	if (!empty_zero_page)
		FUNC2("Oh boy, that early out of memory?");

	page = FUNC3((void *) empty_zero_page);
	FUNC0(page);

	return 1UL;
}