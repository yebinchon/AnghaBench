#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  current_memory_agp; } ;

/* Variables and functions */
 int GFP_DMA32 ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct page*,int) ; 
 TYPE_1__* agp_bridge ; 
 struct page* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int) ; 

__attribute__((used)) static struct page *FUNC6(void)
{
	struct page *page;

	page = FUNC1(GFP_KERNEL | GFP_DMA32, 2);
	if (page == NULL)
		return NULL;

	if (FUNC4(page, 4) < 0) {
		FUNC5(page, 4);
		FUNC0(page, 2);
		return NULL;
	}
	FUNC3(page);
	FUNC2(&agp_bridge->current_memory_agp);
	return page;
}