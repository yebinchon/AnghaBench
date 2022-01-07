
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int vblank_disable_timer; int * vblank_refcount; } ;


 int BUG_ON (int) ;
 int DRM_HZ ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int drm_vblank_offdelay ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

void drm_vblank_put(struct drm_device *dev, int crtc)
{
 BUG_ON(atomic_read(&dev->vblank_refcount[crtc]) == 0);


 if (atomic_dec_and_test(&dev->vblank_refcount[crtc]) &&
     (drm_vblank_offdelay > 0))
  mod_timer(&dev->vblank_disable_timer,
     jiffies + ((drm_vblank_offdelay * DRM_HZ)/1000));
}
