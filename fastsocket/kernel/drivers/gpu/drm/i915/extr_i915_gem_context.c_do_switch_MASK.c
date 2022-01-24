#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct intel_ring_buffer {struct drm_i915_gem_object* last_context_obj; } ;
struct i915_hw_context {int is_initialized; struct drm_i915_gem_object* obj; struct intel_ring_buffer* ring; } ;
struct TYPE_3__ {int /*<<< orphan*/  read_domains; } ;
struct drm_i915_gem_object {scalar_t__ pin_count; int dirty; TYPE_1__ base; struct intel_ring_buffer* ring; int /*<<< orphan*/  cache_level; int /*<<< orphan*/  has_global_gtt_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CONTEXT_ALIGN ; 
 int /*<<< orphan*/  I915_GEM_DOMAIN_INSTRUCTION ; 
 int /*<<< orphan*/  MI_FORCE_RESTORE ; 
 int /*<<< orphan*/  MI_RESTORE_INHIBIT ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_gem_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_gem_object*,struct intel_ring_buffer*) ; 
 int FUNC6 (struct drm_i915_gem_object*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (struct drm_i915_gem_object*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_gem_object*) ; 
 scalar_t__ FUNC9 (struct i915_hw_context*) ; 
 int FUNC10 (struct intel_ring_buffer*,struct i915_hw_context*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct i915_hw_context *to)
{
	struct intel_ring_buffer *ring = to->ring;
	struct drm_i915_gem_object *from_obj = ring->last_context_obj;
	u32 hw_flags = 0;
	int ret;

	FUNC0(from_obj != NULL && from_obj->pin_count == 0);

	if (from_obj == to->obj)
		return 0;

	ret = FUNC6(to->obj, CONTEXT_ALIGN, false, false);
	if (ret)
		return ret;

	/* Clear this page out of any CPU caches for coherent swap-in/out. Note
	 * that thanks to write = false in this call and us not setting any gpu
	 * write domains when putting a context object onto the active list
	 * (when switching away from it), this won't block.
	 * XXX: We need a real interface to do this instead of trickery. */
	ret = FUNC7(to->obj, false);
	if (ret) {
		FUNC8(to->obj);
		return ret;
	}

	if (!to->obj->has_global_gtt_mapping)
		FUNC4(to->obj, to->obj->cache_level);

	if (!to->is_initialized || FUNC9(to))
		hw_flags |= MI_RESTORE_INHIBIT;
	else if (FUNC1(from_obj == to->obj)) /* not yet expected */
		hw_flags |= MI_FORCE_RESTORE;

	ret = FUNC10(ring, to, hw_flags);
	if (ret) {
		FUNC8(to->obj);
		return ret;
	}

	/* The backing object for the context is done after switching to the
	 * *next* context. Therefore we cannot retire the previous context until
	 * the next context has already started running. In fact, the below code
	 * is a bit suboptimal because the retiring can occur simply after the
	 * MI_SET_CONTEXT instead of when the next seqno has completed.
	 */
	if (from_obj != NULL) {
		from_obj->base.read_domains = I915_GEM_DOMAIN_INSTRUCTION;
		FUNC5(from_obj, ring);
		/* As long as MI_SET_CONTEXT is serializing, ie. it flushes the
		 * whole damn pipeline, we don't need to explicitly mark the
		 * object dirty. The only exception is that the context must be
		 * correct in case the object gets swapped out. Ideally we'd be
		 * able to defer doing this until we know the object would be
		 * swapped, but there is no way to do that yet.
		 */
		from_obj->dirty = 1;
		FUNC0(from_obj->ring != ring);
		FUNC8(from_obj);

		FUNC3(&from_obj->base);
	}

	FUNC2(&to->obj->base);
	ring->last_context_obj = to->obj;
	to->is_initialized = true;

	return 0;
}