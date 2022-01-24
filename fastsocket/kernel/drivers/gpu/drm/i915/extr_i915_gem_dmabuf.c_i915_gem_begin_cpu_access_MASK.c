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
struct drm_i915_gem_object {TYPE_1__ base; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; } ;
struct dma_buf {struct drm_i915_gem_object* priv; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int DMA_BIDIRECTIONAL ; 
 int DMA_TO_DEVICE ; 
 int FUNC0 (struct drm_i915_gem_object*,int) ; 
 int FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct dma_buf *dma_buf, size_t start, size_t length, enum dma_data_direction direction)
{
	struct drm_i915_gem_object *obj = dma_buf->priv;
	struct drm_device *dev = obj->base.dev;
	int ret;
	bool write = (direction == DMA_BIDIRECTIONAL || direction == DMA_TO_DEVICE);

	ret = FUNC1(dev);
	if (ret)
		return ret;

	ret = FUNC0(obj, write);
	FUNC2(&dev->struct_mutex);
	return ret;
}