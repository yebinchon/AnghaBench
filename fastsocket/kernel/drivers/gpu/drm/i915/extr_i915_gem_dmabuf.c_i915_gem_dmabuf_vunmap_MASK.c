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
struct TYPE_2__ {struct drm_device* dev; } ;
struct drm_i915_gem_object {scalar_t__ vmapping_count; int /*<<< orphan*/ * dma_buf_vmapping; TYPE_1__ base; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; } ;
struct dma_buf {struct drm_i915_gem_object* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_gem_object*) ; 
 int FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct dma_buf *dma_buf, void *vaddr)
{
	struct drm_i915_gem_object *obj = dma_buf->priv;
	struct drm_device *dev = obj->base.dev;
	int ret;

	ret = FUNC1(dev);
	if (ret)
		return;

	if (--obj->vmapping_count == 0) {
		FUNC3(obj->dma_buf_vmapping);
		obj->dma_buf_vmapping = NULL;

		FUNC0(obj);
	}
	FUNC2(&dev->struct_mutex);
}