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
typedef  int u64 ;
struct page {int dummy; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int FUNC0 (struct page*) ; 
 struct page* FUNC1 (void*) ; 

__attribute__((used)) static u64 FUNC2(void *p)
{
	struct page *page;
	u64 paddr = 0;

	page = FUNC1(p);
	if (page)
		paddr = FUNC0(page) << PAGE_SHIFT;

	return paddr;
}