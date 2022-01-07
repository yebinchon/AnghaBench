
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct drm_device* dev; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;
struct drm_device {int struct_mutex; } ;
struct dma_buf {struct drm_i915_gem_object* priv; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int DMA_BIDIRECTIONAL ;
 int DMA_TO_DEVICE ;
 int i915_gem_object_set_to_cpu_domain (struct drm_i915_gem_object*,int) ;
 int i915_mutex_lock_interruptible (struct drm_device*) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int i915_gem_begin_cpu_access(struct dma_buf *dma_buf, size_t start, size_t length, enum dma_data_direction direction)
{
 struct drm_i915_gem_object *obj = dma_buf->priv;
 struct drm_device *dev = obj->base.dev;
 int ret;
 bool write = (direction == DMA_BIDIRECTIONAL || direction == DMA_TO_DEVICE);

 ret = i915_mutex_lock_interruptible(dev);
 if (ret)
  return ret;

 ret = i915_gem_object_set_to_cpu_domain(obj, write);
 mutex_unlock(&dev->struct_mutex);
 return ret;
}
