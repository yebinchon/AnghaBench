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
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 unsigned long PMD_MASK ; 
 int _KERNPG_TABLE ; 
 unsigned long __PAGE_KERNEL_LARGE_EXEC ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct page* FUNC4 (struct kimage*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct kimage *image, pgd_t *pgd,
				unsigned long addr)
{
	pud_t *pud;
	pmd_t *pmd;
	struct page *page;
	int result = -ENOMEM;

	addr &= PMD_MASK;
	pgd += FUNC7(addr);
	if (!FUNC8(*pgd)) {
		page = FUNC4(image, 0);
		if (!page)
			goto out;
		pud = (pud_t *)FUNC6(page);
		FUNC5(pud, 0, PAGE_SIZE);
		FUNC13(pgd, FUNC1(FUNC0(pud) | _KERNPG_TABLE));
	}
	pud = FUNC11(pgd, addr);
	if (!FUNC12(*pud)) {
		page = FUNC4(image, 0);
		if (!page)
			goto out;
		pmd = (pmd_t *)FUNC6(page);
		FUNC5(pmd, 0, PAGE_SIZE);
		FUNC15(pud, FUNC3(FUNC0(pmd) | _KERNPG_TABLE));
	}
	pmd = FUNC9(pud, addr);
	if (!FUNC10(*pmd))
		FUNC14(pmd, FUNC2(addr | __PAGE_KERNEL_LARGE_EXEC));
	result = 0;
out:
	return result;
}