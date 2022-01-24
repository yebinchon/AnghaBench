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
struct kvm_mmu_memory_cache {int nobjs; void** objects; } ;
struct kmem_cache {int dummy; } ;

/* Variables and functions */
 int FUNC0 (void**) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC1 (struct kmem_cache*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct kvm_mmu_memory_cache *cache,
				  struct kmem_cache *base_cache, int min)
{
	void *obj;

	if (cache->nobjs >= min)
		return 0;
	while (cache->nobjs < FUNC0(cache->objects)) {
		obj = FUNC1(base_cache, GFP_KERNEL);
		if (!obj)
			return -ENOMEM;
		cache->objects[cache->nobjs++] = obj;
	}
	return 0;
}