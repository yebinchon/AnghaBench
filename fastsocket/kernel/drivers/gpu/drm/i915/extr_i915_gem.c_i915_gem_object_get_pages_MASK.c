#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  unbound_list; } ;
struct drm_i915_private {TYPE_1__ mm; } ;
struct drm_i915_gem_object_ops {int (* get_pages ) (struct drm_i915_gem_object*) ;} ;
struct TYPE_6__ {TYPE_2__* dev; } ;
struct drm_i915_gem_object {scalar_t__ madv; int /*<<< orphan*/  gtt_list; int /*<<< orphan*/  pages_pin_count; scalar_t__ pages; struct drm_i915_gem_object_ops* ops; TYPE_3__ base; } ;
struct TYPE_5__ {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EINVAL ; 
 scalar_t__ I915_MADV_WILLNEED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct drm_i915_gem_object*) ; 

int
FUNC4(struct drm_i915_gem_object *obj)
{
	struct drm_i915_private *dev_priv = obj->base.dev->dev_private;
	const struct drm_i915_gem_object_ops *ops = obj->ops;
	int ret;

	if (obj->pages)
		return 0;

	if (obj->madv != I915_MADV_WILLNEED) {
		FUNC1("Attempting to obtain a purgeable object\n");
		return -EINVAL;
	}

	FUNC0(obj->pages_pin_count);

	ret = ops->get_pages(obj);
	if (ret)
		return ret;

	FUNC2(&obj->gtt_list, &dev_priv->mm.unbound_list);
	return 0;
}