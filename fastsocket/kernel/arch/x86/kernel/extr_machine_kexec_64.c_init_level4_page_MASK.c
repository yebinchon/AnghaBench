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
struct kimage {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long PAGE_MASK ; 
 unsigned long PGDIR_SIZE ; 
 unsigned long PTRS_PER_PGD ; 
 int _KERNPG_TABLE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct kimage*,int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 struct page* FUNC3 (struct kimage*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct kimage *image, pgd_t *level4p,
				unsigned long addr, unsigned long last_addr)
{
	unsigned long end_addr;
	int result;

	result = 0;
	addr &= PAGE_MASK;
	end_addr = addr + (PTRS_PER_PGD * PGDIR_SIZE);
	while ((addr < last_addr) && (addr < end_addr)) {
		struct page *page;
		pud_t *level3p;

		page = FUNC3(image, 0);
		if (!page) {
			result = -ENOMEM;
			goto out;
		}
		level3p = (pud_t *)FUNC4(page);
		result = FUNC2(image, level3p, addr, last_addr);
		if (result)
			goto out;
		FUNC6(level4p++, FUNC1(FUNC0(level3p) | _KERNPG_TABLE));
		addr += PGDIR_SIZE;
	}
	/* clear the unused entries */
	while (addr < end_addr) {
		FUNC5(level4p++);
		addr += PGDIR_SIZE;
	}
out:
	return result;
}