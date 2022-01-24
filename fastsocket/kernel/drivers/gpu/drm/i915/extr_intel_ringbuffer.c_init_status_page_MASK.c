#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  gfx_addr; int /*<<< orphan*/ * page_addr; struct drm_i915_gem_object* obj; } ;
struct intel_ring_buffer {TYPE_2__ status_page; int /*<<< orphan*/  name; struct drm_device* dev; } ;
struct drm_i915_gem_object {int /*<<< orphan*/  base; TYPE_1__* pages; int /*<<< orphan*/  gtt_offset; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  sgl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  I915_CACHE_LLC ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct drm_i915_gem_object* FUNC3 (struct drm_device*,int) ; 
 int FUNC4 (struct drm_i915_gem_object*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_gem_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_ring_buffer*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct intel_ring_buffer *ring)
{
	struct drm_device *dev = ring->dev;
	struct drm_i915_gem_object *obj;
	int ret;

	obj = FUNC3(dev, 4096);
	if (obj == NULL) {
		FUNC1("Failed to allocate status page\n");
		ret = -ENOMEM;
		goto err;
	}

	FUNC5(obj, I915_CACHE_LLC);

	ret = FUNC4(obj, 4096, true, false);
	if (ret != 0) {
		goto err_unref;
	}

	ring->status_page.gfx_addr = obj->gtt_offset;
	ring->status_page.page_addr = FUNC8(FUNC10(obj->pages->sgl));
	if (ring->status_page.page_addr == NULL) {
		ret = -ENOMEM;
		goto err_unpin;
	}
	ring->status_page.obj = obj;
	FUNC9(ring->status_page.page_addr, 0, PAGE_SIZE);

	FUNC7(ring);
	FUNC0("%s hws offset: 0x%08x\n",
			ring->name, ring->status_page.gfx_addr);

	return 0;

err_unpin:
	FUNC6(obj);
err_unref:
	FUNC2(&obj->base);
err:
	return ret;
}