
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct drm_device* dev; } ;
struct drm_i915_gem_object {scalar_t__ vmapping_count; int * dma_buf_vmapping; TYPE_1__ base; } ;
struct drm_device {int struct_mutex; } ;
struct dma_buf {struct drm_i915_gem_object* priv; } ;


 int i915_gem_object_unpin_pages (struct drm_i915_gem_object*) ;
 int i915_mutex_lock_interruptible (struct drm_device*) ;
 int mutex_unlock (int *) ;
 int vunmap (int *) ;

__attribute__((used)) static void i915_gem_dmabuf_vunmap(struct dma_buf *dma_buf, void *vaddr)
{
 struct drm_i915_gem_object *obj = dma_buf->priv;
 struct drm_device *dev = obj->base.dev;
 int ret;

 ret = i915_mutex_lock_interruptible(dev);
 if (ret)
  return;

 if (--obj->vmapping_count == 0) {
  vunmap(obj->dma_buf_vmapping);
  obj->dma_buf_vmapping = ((void*)0);

  i915_gem_object_unpin_pages(obj);
 }
 mutex_unlock(&dev->struct_mutex);
}
