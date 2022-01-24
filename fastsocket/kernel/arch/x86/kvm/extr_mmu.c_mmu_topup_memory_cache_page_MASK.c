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
struct kvm_mmu_memory_cache {int nobjs; int /*<<< orphan*/ * objects; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct kvm_mmu_memory_cache *cache,
				       int min)
{
	struct page *page;

	if (cache->nobjs >= min)
		return 0;
	while (cache->nobjs < FUNC0(cache->objects)) {
		page = FUNC1(GFP_KERNEL);
		if (!page)
			return -ENOMEM;
		FUNC3(page, 0);
		cache->objects[cache->nobjs++] = FUNC2(page);
	}
	return 0;
}