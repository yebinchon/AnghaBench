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
typedef  int /*<<< orphan*/  u32 ;
struct drm_mm_node {int dummy; } ;
struct TYPE_2__ {scalar_t__ stolen_base; int /*<<< orphan*/  stolen; } ;
struct drm_i915_private {TYPE_1__ mm; } ;
struct drm_i915_gem_object {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct drm_i915_gem_object* FUNC1 (struct drm_device*,struct drm_mm_node*) ; 
 struct drm_mm_node* FUNC2 (struct drm_mm_node*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_mm_node*) ; 
 struct drm_mm_node* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

struct drm_i915_gem_object *
FUNC5(struct drm_device *dev, u32 size)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct drm_i915_gem_object *obj;
	struct drm_mm_node *stolen;

	if (dev_priv->mm.stolen_base == 0)
		return NULL;

	FUNC0("creating stolen object: size=%x\n", size);
	if (size == 0)
		return NULL;

	stolen = FUNC4(&dev_priv->mm.stolen, size, 4096, 0);
	if (stolen)
		stolen = FUNC2(stolen, size, 4096);
	if (stolen == NULL)
		return NULL;

	obj = FUNC1(dev, stolen);
	if (obj)
		return obj;

	FUNC3(stolen);
	return NULL;
}