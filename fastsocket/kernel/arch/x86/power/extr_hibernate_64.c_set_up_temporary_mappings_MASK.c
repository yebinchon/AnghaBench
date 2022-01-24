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
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 unsigned long PGDIR_SIZE ; 
 unsigned long __START_KERNEL_map ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * init_level4_pgt ; 
 int /*<<< orphan*/  max_pfn ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned long) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * temp_level4_pgt ; 

__attribute__((used)) static int FUNC7(void)
{
	unsigned long start, end, next;
	int error;

	temp_level4_pgt = (pgd_t *)FUNC1(GFP_ATOMIC);
	if (!temp_level4_pgt)
		return -ENOMEM;

	/* It is safe to reuse the original kernel mapping */
	FUNC6(temp_level4_pgt + FUNC4(__START_KERNEL_map),
		init_level4_pgt[FUNC4(__START_KERNEL_map)]);

	/* Set up the direct mapping from scratch */
	start = (unsigned long)FUNC3(0);
	end = (unsigned long)FUNC3(max_pfn);

	for (; start < end; start = next) {
		pud_t *pud = (pud_t *)FUNC1(GFP_ATOMIC);
		if (!pud)
			return -ENOMEM;
		next = start + PGDIR_SIZE;
		if (next > end)
			next = end;
		if ((error = FUNC5(pud, FUNC0(start), FUNC0(next))))
			return error;
		FUNC6(temp_level4_pgt + FUNC4(start),
			FUNC2(FUNC0(pud)));
	}
	return 0;
}