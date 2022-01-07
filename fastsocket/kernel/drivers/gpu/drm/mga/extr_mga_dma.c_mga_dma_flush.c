
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_lock {int flags; } ;
struct drm_file {int dummy; } ;
struct drm_device {scalar_t__ dev_private; } ;
typedef int drm_mga_private_t ;


 int DRM_DEBUG (char*,char*,char*,char*) ;
 int DRM_INFO (char*) ;
 int LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;
 int WRAP_WAIT_WITH_RETURN (int *) ;
 int _DRM_LOCK_FLUSH ;
 int _DRM_LOCK_FLUSH_ALL ;
 int _DRM_LOCK_QUIESCENT ;
 int mga_do_dma_flush (int *) ;
 int mga_do_wait_for_idle (int *) ;

int mga_dma_flush(struct drm_device *dev, void *data,
    struct drm_file *file_priv)
{
 drm_mga_private_t *dev_priv = (drm_mga_private_t *) dev->dev_private;
 struct drm_lock *lock = data;

 LOCK_TEST_WITH_RETURN(dev, file_priv);

 DRM_DEBUG("%s%s%s\n",
    (lock->flags & _DRM_LOCK_FLUSH) ? "flush, " : "",
    (lock->flags & _DRM_LOCK_FLUSH_ALL) ? "flush all, " : "",
    (lock->flags & _DRM_LOCK_QUIESCENT) ? "idle, " : "");

 WRAP_WAIT_WITH_RETURN(dev_priv);

 if (lock->flags & (_DRM_LOCK_FLUSH | _DRM_LOCK_FLUSH_ALL))
  mga_do_dma_flush(dev_priv);

 if (lock->flags & _DRM_LOCK_QUIESCENT) {






  return mga_do_wait_for_idle(dev_priv);

 } else {
  return 0;
 }
}
