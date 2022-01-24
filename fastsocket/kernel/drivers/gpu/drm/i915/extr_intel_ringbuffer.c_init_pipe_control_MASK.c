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
struct pipe_control {struct drm_i915_gem_object* obj; int /*<<< orphan*/  gtt_offset; int /*<<< orphan*/ * cpu_page; } ;
struct intel_ring_buffer {struct pipe_control* private; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct drm_i915_gem_object {int /*<<< orphan*/  base; TYPE_1__* pages; int /*<<< orphan*/  gtt_offset; } ;
struct TYPE_2__ {int /*<<< orphan*/  sgl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I915_CACHE_LLC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct drm_i915_gem_object* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct drm_i915_gem_object*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_gem_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC7 (struct pipe_control*) ; 
 struct pipe_control* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct intel_ring_buffer *ring)
{
	struct pipe_control *pc;
	struct drm_i915_gem_object *obj;
	int ret;

	if (ring->private)
		return 0;

	pc = FUNC8(sizeof(*pc), GFP_KERNEL);
	if (!pc)
		return -ENOMEM;

	obj = FUNC3(ring->dev, 4096);
	if (obj == NULL) {
		FUNC1("Failed to allocate seqno page\n");
		ret = -ENOMEM;
		goto err;
	}

	FUNC5(obj, I915_CACHE_LLC);

	ret = FUNC4(obj, 4096, true, false);
	if (ret)
		goto err_unref;

	pc->gtt_offset = obj->gtt_offset;
	pc->cpu_page =  FUNC9(FUNC10(obj->pages->sgl));
	if (pc->cpu_page == NULL)
		goto err_unpin;

	FUNC0("%s pipe control offset: 0x%08x\n",
			 ring->name, pc->gtt_offset);

	pc->obj = obj;
	ring->private = pc;
	return 0;

err_unpin:
	FUNC6(obj);
err_unref:
	FUNC2(&obj->base);
err:
	FUNC7(pc);
	return ret;
}