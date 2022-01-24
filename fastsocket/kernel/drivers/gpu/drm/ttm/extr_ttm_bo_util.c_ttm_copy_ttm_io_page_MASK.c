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

__attribute__((used)) static int FUNC8(struct ttm_tt *ttm, void *dst,
				unsigned long page,
				pgprot_t prot)
{
	struct page *s = ttm->pages[page];
	void *src;

	if (!s)
		return -ENOMEM;

	dst = (void *)((unsigned long)dst + (page << PAGE_SHIFT));
#ifdef CONFIG_X86
	src = kmap_atomic_prot(s, KM_USER0, prot);
#else
	if (FUNC5(prot) != FUNC5(PAGE_KERNEL))
		src = FUNC6(&s, 1, 0, prot);
	else
		src = FUNC0(s);
#endif
	if (!src)
		return -ENOMEM;

	FUNC4(dst, src, PAGE_SIZE);

#ifdef CONFIG_X86
	kunmap_atomic(src, KM_USER0);
#else
	if (FUNC5(prot) != FUNC5(PAGE_KERNEL))
		FUNC7(src);
	else
		FUNC2(s);
#endif

	return 0;
}