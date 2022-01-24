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
struct amd_page_map {unsigned long* real; unsigned long* remapped; } ;
struct TYPE_2__ {int /*<<< orphan*/  scratch_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* agp_bridge ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 unsigned long* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static int FUNC11(struct amd_page_map *page_map)
{
	int i;

	page_map->real = (unsigned long *) FUNC2(GFP_KERNEL);
	if (page_map->real == NULL)
		return -ENOMEM;

#ifndef CONFIG_X86
	FUNC1(FUNC8(page_map->real));
	FUNC4();
	page_map->remapped = FUNC5(FUNC9(page_map->real),
					    PAGE_SIZE);
	if (page_map->remapped == NULL) {
		FUNC0(FUNC8(page_map->real));
		FUNC3((unsigned long) page_map->real);
		page_map->real = NULL;
		return -ENOMEM;
	}
	FUNC4();
#else
	set_memory_uc((unsigned long)page_map->real, 1);
	page_map->remapped = page_map->real;
#endif

	for (i = 0; i < PAGE_SIZE / sizeof(unsigned long); i++) {
		FUNC10(agp_bridge->scratch_page, page_map->remapped+i);
		FUNC6(page_map->remapped+i);	/* PCI Posting. */
	}

	return 0;
}