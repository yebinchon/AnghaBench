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
struct drm_i915_gem_phys_object {TYPE_3__* handle; scalar_t__ cur_obj; } ;
struct drm_device {TYPE_2__* dev_private; } ;
struct TYPE_4__ {struct drm_i915_gem_phys_object** phys_objs; } ;
struct TYPE_5__ {TYPE_1__ mm; } ;
typedef  TYPE_2__ drm_i915_private_t ;
struct TYPE_6__ {int size; scalar_t__ vaddr; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_gem_phys_object*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int) ; 

__attribute__((used)) static void FUNC4(struct drm_device *dev, int id)
{
	drm_i915_private_t *dev_priv = dev->dev_private;
	struct drm_i915_gem_phys_object *phys_obj;

	if (!dev_priv->mm.phys_objs[id - 1])
		return;

	phys_obj = dev_priv->mm.phys_objs[id - 1];
	if (phys_obj->cur_obj) {
		FUNC1(dev, phys_obj->cur_obj);
	}

#ifdef CONFIG_X86
	set_memory_wb((unsigned long)phys_obj->handle->vaddr, phys_obj->handle->size / PAGE_SIZE);
#endif
	FUNC0(dev, phys_obj->handle);
	FUNC2(phys_obj);
	dev_priv->mm.phys_objs[id - 1] = NULL;
}