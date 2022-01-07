
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int* vblank_inmodeset; int vblank_disable_allowed; int vbl_lock; int num_crtcs; } ;


 int drm_vblank_put (struct drm_device*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void drm_vblank_post_modeset(struct drm_device *dev, int crtc)
{
 unsigned long irqflags;


 if (!dev->num_crtcs)
  return;

 if (dev->vblank_inmodeset[crtc]) {
  spin_lock_irqsave(&dev->vbl_lock, irqflags);
  dev->vblank_disable_allowed = 1;
  spin_unlock_irqrestore(&dev->vbl_lock, irqflags);

  if (dev->vblank_inmodeset[crtc] & 0x2)
   drm_vblank_put(dev, crtc);

  dev->vblank_inmodeset[crtc] = 0;
 }
}
