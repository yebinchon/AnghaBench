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
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 unsigned int TOTAL_SWITCHER_PAGES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * switcher_page ; 
 TYPE_1__* switcher_vma ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void)
{
	unsigned int i;

	/* vunmap() undoes *both* map_vm_area() and __get_vm_area(). */
	FUNC2(switcher_vma->addr);
	/* Now we just need to free the pages we copied the switcher into */
	for (i = 0; i < TOTAL_SWITCHER_PAGES; i++)
		FUNC0(switcher_page[i], 0);
	FUNC1(switcher_page);
}