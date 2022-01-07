
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_gem_object {struct drm_device* dev; } ;
struct drm_device {TYPE_1__* driver; } ;
struct dma_buf {struct drm_gem_object* priv; } ;
struct TYPE_2__ {int (* gem_prime_vunmap ) (struct drm_gem_object*,void*) ;} ;


 int stub1 (struct drm_gem_object*,void*) ;

__attribute__((used)) static void drm_gem_dmabuf_vunmap(struct dma_buf *dma_buf, void *vaddr)
{
 struct drm_gem_object *obj = dma_buf->priv;
 struct drm_device *dev = obj->dev;

 dev->driver->gem_prime_vunmap(obj, vaddr);
}
