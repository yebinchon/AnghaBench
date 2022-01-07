
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int num_crtcs; int vbl_lock; scalar_t__* vblank_enabled; int * vblank_refcount; int vblank_disable_allowed; } ;


 int DRM_DEBUG (char*,int) ;
 scalar_t__ atomic_read (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vblank_disable_and_save (struct drm_device*,int) ;

__attribute__((used)) static void vblank_disable_fn(unsigned long arg)
{
 struct drm_device *dev = (struct drm_device *)arg;
 unsigned long irqflags;
 int i;

 if (!dev->vblank_disable_allowed)
  return;

 for (i = 0; i < dev->num_crtcs; i++) {
  spin_lock_irqsave(&dev->vbl_lock, irqflags);
  if (atomic_read(&dev->vblank_refcount[i]) == 0 &&
      dev->vblank_enabled[i]) {
   DRM_DEBUG("disabling vblank on crtc %d\n", i);
   vblank_disable_and_save(dev, i);
  }
  spin_unlock_irqrestore(&dev->vbl_lock, irqflags);
 }
}
