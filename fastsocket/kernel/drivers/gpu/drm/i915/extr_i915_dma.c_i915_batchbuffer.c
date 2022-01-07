
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct drm_i915_master_private {scalar_t__ sarea_priv; } ;
struct drm_file {int dummy; } ;
struct drm_device {int struct_mutex; TYPE_2__* primary; scalar_t__ dev_private; } ;
struct drm_clip_rect {int dummy; } ;
struct TYPE_12__ {int last_dispatch; } ;
typedef TYPE_4__ drm_i915_sarea_t ;
struct TYPE_11__ {int allow_batchbuffer; } ;
struct TYPE_13__ {TYPE_3__ dri1; } ;
typedef TYPE_5__ drm_i915_private_t ;
struct TYPE_14__ {int num_cliprects; int cliprects; int used; int start; } ;
typedef TYPE_6__ drm_i915_batchbuffer_t ;
struct TYPE_10__ {TYPE_1__* master; } ;
struct TYPE_9__ {struct drm_i915_master_private* driver_priv; } ;


 int DRIVER_MODESET ;
 int DRM_DEBUG_DRIVER (char*,int ,int ,int) ;
 int DRM_ERROR (char*) ;
 int EFAULT ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int READ_BREADCRUMB (TYPE_5__*) ;
 int RING_LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;
 int copy_from_user (struct drm_clip_rect*,int ,int) ;
 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;
 int i915_dispatch_batchbuffer (struct drm_device*,TYPE_6__*,struct drm_clip_rect*) ;
 struct drm_clip_rect* kcalloc (int,int,int ) ;
 int kfree (struct drm_clip_rect*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int i915_batchbuffer(struct drm_device *dev, void *data,
       struct drm_file *file_priv)
{
 drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;
 struct drm_i915_master_private *master_priv = dev->primary->master->driver_priv;
 drm_i915_sarea_t *sarea_priv = (drm_i915_sarea_t *)
     master_priv->sarea_priv;
 drm_i915_batchbuffer_t *batch = data;
 int ret;
 struct drm_clip_rect *cliprects = ((void*)0);

 if (drm_core_check_feature(dev, DRIVER_MODESET))
  return -ENODEV;

 if (!dev_priv->dri1.allow_batchbuffer) {
  DRM_ERROR("Batchbuffer ioctl disabled\n");
  return -EINVAL;
 }

 DRM_DEBUG_DRIVER("i915 batchbuffer, start %x used %d cliprects %d\n",
   batch->start, batch->used, batch->num_cliprects);

 RING_LOCK_TEST_WITH_RETURN(dev, file_priv);

 if (batch->num_cliprects < 0)
  return -EINVAL;

 if (batch->num_cliprects) {
  cliprects = kcalloc(batch->num_cliprects,
        sizeof(struct drm_clip_rect),
        GFP_KERNEL);
  if (cliprects == ((void*)0))
   return -ENOMEM;

  ret = copy_from_user(cliprects, batch->cliprects,
         batch->num_cliprects *
         sizeof(struct drm_clip_rect));
  if (ret != 0) {
   ret = -EFAULT;
   goto fail_free;
  }
 }

 mutex_lock(&dev->struct_mutex);
 ret = i915_dispatch_batchbuffer(dev, batch, cliprects);
 mutex_unlock(&dev->struct_mutex);

 if (sarea_priv)
  sarea_priv->last_dispatch = READ_BREADCRUMB(dev_priv);

fail_free:
 kfree(cliprects);

 return ret;
}
