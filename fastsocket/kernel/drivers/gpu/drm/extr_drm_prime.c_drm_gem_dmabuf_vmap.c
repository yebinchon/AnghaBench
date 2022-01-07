
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_gem_object {struct drm_device* dev; } ;
struct drm_device {TYPE_1__* driver; } ;
struct dma_buf {struct drm_gem_object* priv; } ;
struct TYPE_2__ {void* (* gem_prime_vmap ) (struct drm_gem_object*) ;} ;


 void* stub1 (struct drm_gem_object*) ;

__attribute__((used)) static void *drm_gem_dmabuf_vmap(struct dma_buf *dma_buf)
{
 struct drm_gem_object *obj = dma_buf->priv;
 struct drm_device *dev = obj->dev;

 return dev->driver->gem_prime_vmap(obj);
}
