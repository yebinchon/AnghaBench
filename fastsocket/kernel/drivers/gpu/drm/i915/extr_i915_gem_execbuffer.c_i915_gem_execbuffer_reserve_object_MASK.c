#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct intel_ring_buffer {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {scalar_t__ aliasing_ppgtt; } ;
struct drm_i915_private {TYPE_2__ mm; } ;
struct TYPE_7__ {void* pending_write_domain; void* pending_read_domains; TYPE_1__* dev; } ;
struct drm_i915_gem_object {scalar_t__ tiling_mode; int pending_fenced_gpu_access; int has_aliasing_ppgtt_mapping; scalar_t__ gtt_offset; int /*<<< orphan*/  cache_level; int /*<<< orphan*/  has_global_gtt_mapping; TYPE_3__ base; struct drm_i915_gem_exec_object2* exec_entry; } ;
struct drm_i915_gem_exec_object2 {int flags; scalar_t__ offset; int /*<<< orphan*/  alignment; } ;
struct TYPE_8__ {int gen; } ;
struct TYPE_5__ {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int EXEC_OBJECT_NEEDS_FENCE ; 
 int EXEC_OBJECT_NEEDS_GTT ; 
 int EXEC_OBJECT_WRITE ; 
 void* I915_GEM_DOMAIN_RENDER ; 
 scalar_t__ I915_TILING_NONE ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 
 int __EXEC_OBJECT_HAS_FENCE ; 
 int __EXEC_OBJECT_HAS_PIN ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_gem_object*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_i915_gem_object*) ; 
 int FUNC3 (struct drm_i915_gem_object*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC4 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct drm_i915_gem_object*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct drm_i915_gem_object*) ; 

__attribute__((used)) static int
FUNC7(struct drm_i915_gem_object *obj,
				   struct intel_ring_buffer *ring,
				   bool *need_reloc)
{
	struct drm_i915_private *dev_priv = obj->base.dev->dev_private;
	struct drm_i915_gem_exec_object2 *entry = obj->exec_entry;
	bool has_fenced_gpu_access = FUNC0(ring->dev)->gen < 4;
	bool need_fence, need_mappable;
	int ret;

	need_fence =
		has_fenced_gpu_access &&
		entry->flags & EXEC_OBJECT_NEEDS_FENCE &&
		obj->tiling_mode != I915_TILING_NONE;
	need_mappable = need_fence || FUNC6(obj);

	ret = FUNC3(obj, entry->alignment, need_mappable, false);
	if (ret)
		return ret;

	entry->flags |= __EXEC_OBJECT_HAS_PIN;

	if (has_fenced_gpu_access) {
		if (entry->flags & EXEC_OBJECT_NEEDS_FENCE) {
			ret = FUNC2(obj);
			if (ret)
				return ret;

			if (FUNC4(obj))
				entry->flags |= __EXEC_OBJECT_HAS_FENCE;

			obj->pending_fenced_gpu_access = true;
		}
	}

	/* Ensure ppgtt mapping exists if needed */
	if (dev_priv->mm.aliasing_ppgtt && !obj->has_aliasing_ppgtt_mapping) {
		FUNC5(dev_priv->mm.aliasing_ppgtt,
				       obj, obj->cache_level);

		obj->has_aliasing_ppgtt_mapping = 1;
	}

	if (entry->offset != obj->gtt_offset) {
		entry->offset = obj->gtt_offset;
		*need_reloc = true;
	}

	if (entry->flags & EXEC_OBJECT_WRITE) {
		obj->base.pending_read_domains = I915_GEM_DOMAIN_RENDER;
		obj->base.pending_write_domain = I915_GEM_DOMAIN_RENDER;
	}

	if (entry->flags & EXEC_OBJECT_NEEDS_GTT &&
	    !obj->has_global_gtt_mapping)
		FUNC1(obj, obj->cache_level);

	return 0;
}