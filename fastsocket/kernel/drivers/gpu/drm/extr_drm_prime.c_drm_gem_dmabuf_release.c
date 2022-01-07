
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {struct dma_buf* export_dma_buf; } ;
struct dma_buf {struct drm_gem_object* priv; } ;


 int drm_gem_object_unreference_unlocked (struct drm_gem_object*) ;

__attribute__((used)) static void drm_gem_dmabuf_release(struct dma_buf *dma_buf)
{
 struct drm_gem_object *obj = dma_buf->priv;

 if (obj->export_dma_buf == dma_buf) {

  obj->export_dma_buf = ((void*)0);
  drm_gem_object_unreference_unlocked(obj);
 }
}
