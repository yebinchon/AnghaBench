
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_gem_object {void* export_dma_buf; TYPE_1__* import_attach; } ;
struct TYPE_6__ {int lock; } ;
struct drm_file {TYPE_3__ prime; } ;
struct drm_device {TYPE_2__* driver; } ;
typedef void dma_buf ;
struct TYPE_5__ {void* (* gem_prime_export ) (struct drm_device*,struct drm_gem_object*,int ) ;} ;
struct TYPE_4__ {void* dmabuf; } ;


 int ENOENT ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dma_buf_fd (void*,int ) ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_device*,struct drm_file*,int ) ;
 int drm_gem_object_unreference_unlocked (struct drm_gem_object*) ;
 int drm_prime_add_buf_handle (TYPE_3__*,void*,int ) ;
 int get_dma_buf (void*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 void* stub1 (struct drm_device*,struct drm_gem_object*,int ) ;

int drm_gem_prime_handle_to_fd(struct drm_device *dev,
  struct drm_file *file_priv, uint32_t handle, uint32_t flags,
  int *prime_fd)
{
 struct drm_gem_object *obj;
 void *buf;
 int ret = 0;
 struct dma_buf *dmabuf;

 obj = drm_gem_object_lookup(dev, file_priv, handle);
 if (!obj)
  return -ENOENT;

 mutex_lock(&file_priv->prime.lock);

 if (obj->import_attach) {
  dmabuf = obj->import_attach->dmabuf;
  goto out_have_obj;
 }

 if (obj->export_dma_buf) {
  dmabuf = obj->export_dma_buf;
  goto out_have_obj;
 }

 buf = dev->driver->gem_prime_export(dev, obj, flags);
 if (IS_ERR(buf)) {



  ret = PTR_ERR(buf);
  goto out;
 }
 obj->export_dma_buf = buf;




 ret = drm_prime_add_buf_handle(&file_priv->prime,
           obj->export_dma_buf, handle);
 if (ret)
  goto out;

 *prime_fd = dma_buf_fd(buf, flags);
 mutex_unlock(&file_priv->prime.lock);
 return 0;

out_have_obj:
 get_dma_buf(dmabuf);
 *prime_fd = dma_buf_fd(dmabuf, flags);
out:
 drm_gem_object_unreference_unlocked(obj);
 mutex_unlock(&file_priv->prime.lock);
 return ret;
}
