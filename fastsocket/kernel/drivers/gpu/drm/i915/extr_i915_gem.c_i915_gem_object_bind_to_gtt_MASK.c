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
typedef  int u32 ;
struct drm_mm_node {int start; int size; } ;
struct TYPE_6__ {int size; struct drm_device* dev; } ;
struct drm_i915_gem_object {int gtt_offset; int map_and_fenceable; TYPE_2__ base; struct drm_mm_node* gtt_space; int /*<<< orphan*/  mm_list; int /*<<< orphan*/  gtt_list; int /*<<< orphan*/  cache_level; int /*<<< orphan*/  tiling_mode; } ;
struct drm_device {TYPE_4__* dev_private; } ;
struct TYPE_7__ {scalar_t__ mappable_end; scalar_t__ total; } ;
struct TYPE_5__ {int /*<<< orphan*/  inactive_list; int /*<<< orphan*/  bound_list; int /*<<< orphan*/  gtt_space; } ;
struct TYPE_8__ {TYPE_3__ gtt; TYPE_1__ mm; } ;
typedef  TYPE_4__ drm_i915_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int E2BIG ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct drm_mm_node*,int,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct drm_mm_node*,int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_mm_node*) ; 
 int FUNC5 (struct drm_device*,int,unsigned int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (struct drm_device*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct drm_device*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct drm_i915_gem_object*) ; 
 int FUNC9 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_device*,struct drm_mm_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_mm_node*) ; 
 struct drm_mm_node* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct drm_i915_gem_object*,int) ; 

__attribute__((used)) static int
FUNC19(struct drm_i915_gem_object *obj,
			    unsigned alignment,
			    bool map_and_fenceable,
			    bool nonblocking)
{
	struct drm_device *dev = obj->base.dev;
	drm_i915_private_t *dev_priv = dev->dev_private;
	struct drm_mm_node *node;
	u32 size, fence_size, fence_alignment, unfenced_alignment;
	bool mappable, fenceable;
	int ret;

	fence_size = FUNC7(dev,
					   obj->base.size,
					   obj->tiling_mode);
	fence_alignment = FUNC6(dev,
						     obj->base.size,
						     obj->tiling_mode, true);
	unfenced_alignment =
		FUNC6(dev,
						    obj->base.size,
						    obj->tiling_mode, false);

	if (alignment == 0)
		alignment = map_and_fenceable ? fence_alignment :
						unfenced_alignment;
	if (map_and_fenceable && alignment & (fence_alignment - 1)) {
		FUNC0("Invalid object alignment requested %u\n", alignment);
		return -EINVAL;
	}

	size = map_and_fenceable ? fence_size : obj->base.size;

	/* If the object is bigger than the entire aperture, reject it early
	 * before evicting everything in a vain attempt to find space.
	 */
	if (obj->base.size >
	    (map_and_fenceable ? dev_priv->gtt.mappable_end : dev_priv->gtt.total)) {
		FUNC0("Attempting to bind an object larger than the aperture\n");
		return -E2BIG;
	}

	ret = FUNC9(obj);
	if (ret)
		return ret;

	FUNC10(obj);

	node = FUNC15(sizeof(*node), GFP_KERNEL);
	if (node == NULL) {
		FUNC11(obj);
		return -ENOMEM;
	}

 search_free:
	if (map_and_fenceable)
		ret = FUNC3(&dev_priv->mm.gtt_space, node,
							  size, alignment, obj->cache_level,
							  0, dev_priv->gtt.mappable_end);
	else
		ret = FUNC2(&dev_priv->mm.gtt_space, node,
						 size, alignment, obj->cache_level);
	if (ret) {
		ret = FUNC5(dev, size, alignment,
					       obj->cache_level,
					       map_and_fenceable,
					       nonblocking);
		if (ret == 0)
			goto search_free;

		FUNC11(obj);
		FUNC14(node);
		return ret;
	}
	if (FUNC1(!FUNC12(dev, node, obj->cache_level))) {
		FUNC11(obj);
		FUNC4(node);
		return -EINVAL;
	}

	ret = FUNC8(obj);
	if (ret) {
		FUNC11(obj);
		FUNC4(node);
		return ret;
	}

	FUNC17(&obj->gtt_list, &dev_priv->mm.bound_list);
	FUNC16(&obj->mm_list, &dev_priv->mm.inactive_list);

	obj->gtt_space = node;
	obj->gtt_offset = node->start;

	fenceable =
		node->size == fence_size &&
		(node->start & (fence_alignment - 1)) == 0;

	mappable =
		obj->gtt_offset + obj->base.size <= dev_priv->gtt.mappable_end;

	obj->map_and_fenceable = mappable && fenceable;

	FUNC11(obj);
	FUNC18(obj, map_and_fenceable);
	FUNC13(dev);
	return 0;
}