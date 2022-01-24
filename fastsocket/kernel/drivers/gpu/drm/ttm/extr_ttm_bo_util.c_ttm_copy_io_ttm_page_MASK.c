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
struct ttm_tt {struct page** pages; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  KM_USER0 ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 void* FUNC0 (struct page*) ; 
 void* FUNC1 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct page**,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 

__attribute__((used)) static int FUNC8(struct ttm_tt *ttm, void *src,
				unsigned long page,
				pgprot_t prot)
{
	struct page *d = ttm->pages[page];
	void *dst;

	if (!d)
		return -ENOMEM;

	src = (void *)((unsigned long)src + (page << PAGE_SHIFT));

#ifdef CONFIG_X86
	dst = kmap_atomic_prot(d, KM_USER0, prot);
#else
	if (FUNC5(prot) != FUNC5(PAGE_KERNEL))
		dst = FUNC6(&d, 1, 0, prot);
	else
		dst = FUNC0(d);
#endif
	if (!dst)
		return -ENOMEM;

	FUNC4(dst, src, PAGE_SIZE);

#ifdef CONFIG_X86
	kunmap_atomic(dst, KM_USER0);
#else
	if (FUNC5(prot) != FUNC5(PAGE_KERNEL))
		FUNC7(dst);
	else
		FUNC2(d);
#endif

	return 0;
}