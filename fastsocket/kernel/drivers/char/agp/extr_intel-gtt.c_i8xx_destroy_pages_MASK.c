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
 int /*<<< orphan*/  FUNC0 (struct page*,int) ; 
 TYPE_1__* agp_bridge ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int) ; 

__attribute__((used)) static void FUNC4(struct page *page)
{
	if (page == NULL)
		return;

	FUNC3(page, 4);
	FUNC2(page);
	FUNC0(page, 2);
	FUNC1(&agp_bridge->current_memory_agp);
}