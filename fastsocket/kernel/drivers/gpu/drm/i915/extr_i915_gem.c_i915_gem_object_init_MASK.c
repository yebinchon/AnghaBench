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
struct drm_i915_gem_object_ops {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  size; TYPE_1__* dev; } ;
struct drm_i915_gem_object {int map_and_fenceable; TYPE_2__ base; int /*<<< orphan*/  madv; int /*<<< orphan*/  fence_reg; struct drm_i915_gem_object_ops const* ops; int /*<<< orphan*/  exec_list; int /*<<< orphan*/  ring_list; int /*<<< orphan*/  gtt_list; int /*<<< orphan*/  mm_list; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  I915_FENCE_REG_NONE ; 
 int /*<<< orphan*/  I915_MADV_WILLNEED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct drm_i915_gem_object *obj,
			  const struct drm_i915_gem_object_ops *ops)
{
	FUNC0(&obj->mm_list);
	FUNC0(&obj->gtt_list);
	FUNC0(&obj->ring_list);
	FUNC0(&obj->exec_list);

	obj->ops = ops;

	obj->fence_reg = I915_FENCE_REG_NONE;
	obj->madv = I915_MADV_WILLNEED;
	/* Avoid an unnecessary call to unbind on the first bind. */
	obj->map_and_fenceable = true;

	FUNC1(obj->base.dev->dev_private, obj->base.size);
}