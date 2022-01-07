
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct dma_buf* export_dma_buf; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;
struct dma_buf {struct drm_i915_gem_object* priv; } ;


 int drm_gem_object_unreference_unlocked (TYPE_1__*) ;

__attribute__((used)) static void i915_gem_dmabuf_release(struct dma_buf *dma_buf)
{
 struct drm_i915_gem_object *obj = dma_buf->priv;

 if (obj->base.export_dma_buf == dma_buf) {

  obj->base.export_dma_buf = ((void*)0);
  drm_gem_object_unreference_unlocked(&obj->base);
 }
}
