
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_gem_object {int dummy; } ;
struct TYPE_5__ {int lock; } ;
struct drm_file {TYPE_2__ prime; } ;
struct drm_device {TYPE_1__* driver; } ;
typedef struct drm_gem_object dma_buf ;
struct TYPE_4__ {struct drm_gem_object* (* gem_prime_import ) (struct drm_device*,struct drm_gem_object*) ;} ;


 scalar_t__ IS_ERR (struct drm_gem_object*) ;
 int PTR_ERR (struct drm_gem_object*) ;
 struct drm_gem_object* dma_buf_get (int) ;
 int dma_buf_put (struct drm_gem_object*) ;
 int drm_gem_handle_create (struct drm_file*,struct drm_gem_object*,int *) ;
 int drm_gem_object_handle_unreference_unlocked (struct drm_gem_object*) ;
 int drm_gem_object_unreference_unlocked (struct drm_gem_object*) ;
 int drm_prime_add_buf_handle (TYPE_2__*,struct drm_gem_object*,int ) ;
 int drm_prime_lookup_buf_handle (TYPE_2__*,struct drm_gem_object*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct drm_gem_object* stub1 (struct drm_device*,struct drm_gem_object*) ;

int drm_gem_prime_fd_to_handle(struct drm_device *dev,
  struct drm_file *file_priv, int prime_fd, uint32_t *handle)
{
 struct dma_buf *dma_buf;
 struct drm_gem_object *obj;
 int ret;

 dma_buf = dma_buf_get(prime_fd);
 if (IS_ERR(dma_buf))
  return PTR_ERR(dma_buf);

 mutex_lock(&file_priv->prime.lock);

 ret = drm_prime_lookup_buf_handle(&file_priv->prime,
   dma_buf, handle);
 if (!ret) {
  ret = 0;
  goto out_put;
 }


 obj = dev->driver->gem_prime_import(dev, dma_buf);
 if (IS_ERR(obj)) {
  ret = PTR_ERR(obj);
  goto out_put;
 }

 ret = drm_gem_handle_create(file_priv, obj, handle);
 drm_gem_object_unreference_unlocked(obj);
 if (ret)
  goto out_put;

 ret = drm_prime_add_buf_handle(&file_priv->prime,
   dma_buf, *handle);
 if (ret)
  goto fail;

 mutex_unlock(&file_priv->prime.lock);

 dma_buf_put(dma_buf);

 return 0;

fail:



 drm_gem_object_handle_unreference_unlocked(obj);
out_put:
 dma_buf_put(dma_buf);
 mutex_unlock(&file_priv->prime.lock);
 return ret;
}
