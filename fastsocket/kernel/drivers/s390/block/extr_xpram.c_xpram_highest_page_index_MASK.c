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

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned int) ; 

__attribute__((used)) static unsigned long FUNC3(void)
{
	unsigned int page_index, add_bit;
	unsigned long mem_page;

	mem_page = (unsigned long) FUNC0(GFP_KERNEL);
	if (!mem_page)
		return 0;

	page_index = 0;
	add_bit = 1ULL << (sizeof(unsigned int)*8 - 1);
	while (add_bit > 0) {
		if (FUNC2(mem_page, page_index | add_bit) == 0)
			page_index |= add_bit;
		add_bit >>= 1;
	}

	FUNC1 (mem_page);

	return page_index;
}