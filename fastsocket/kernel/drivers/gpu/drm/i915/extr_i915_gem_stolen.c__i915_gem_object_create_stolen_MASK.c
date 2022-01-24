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
struct drm_mm_node {int /*<<< orphan*/  size; int /*<<< orphan*/  start; } ;
struct TYPE_2__ {void* read_domains; void* write_domain; } ;
struct drm_i915_gem_object {int has_dma_mapping; int pages_pin_count; int /*<<< orphan*/  cache_level; TYPE_1__ base; struct drm_mm_node* stolen; int /*<<< orphan*/ * pages; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  I915_CACHE_NONE ; 
 void* I915_GEM_DOMAIN_GTT ; 
 scalar_t__ FUNC0 (struct drm_device*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct drm_i915_gem_object* FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_gem_object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  i915_gem_object_stolen_ops ; 
 int /*<<< orphan*/ * FUNC4 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_i915_gem_object *
FUNC5(struct drm_device *dev,
			       struct drm_mm_node *stolen)
{
	struct drm_i915_gem_object *obj;

	obj = FUNC1(dev);
	if (obj == NULL)
		return NULL;

	if (FUNC0(dev, &obj->base, stolen->size))
		goto cleanup;

	FUNC3(obj, &i915_gem_object_stolen_ops);

	obj->pages = FUNC4(dev,
						  stolen->start, stolen->size);
	if (obj->pages == NULL)
		goto cleanup;

	obj->has_dma_mapping = true;
	obj->pages_pin_count = 1;
	obj->stolen = stolen;

	obj->base.write_domain = I915_GEM_DOMAIN_GTT;
	obj->base.read_domains = I915_GEM_DOMAIN_GTT;
	obj->cache_level = I915_CACHE_NONE;

	return obj;

cleanup:
	FUNC2(obj);
	return NULL;
}