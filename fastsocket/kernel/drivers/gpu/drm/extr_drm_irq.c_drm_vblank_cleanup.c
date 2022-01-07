
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {scalar_t__ num_crtcs; int _vblank_time; int vblank_inmodeset; int last_vblank_wait; int last_vblank; int vblank_enabled; int vblank_refcount; int _vblank_count; int vbl_queue; int vblank_disable_timer; } ;


 int del_timer_sync (int *) ;
 int kfree (int ) ;
 int vblank_disable_fn (unsigned long) ;

void drm_vblank_cleanup(struct drm_device *dev)
{

 if (dev->num_crtcs == 0)
  return;

 del_timer_sync(&dev->vblank_disable_timer);

 vblank_disable_fn((unsigned long)dev);

 kfree(dev->vbl_queue);
 kfree(dev->_vblank_count);
 kfree(dev->vblank_refcount);
 kfree(dev->vblank_enabled);
 kfree(dev->last_vblank);
 kfree(dev->last_vblank_wait);
 kfree(dev->vblank_inmodeset);
 kfree(dev->_vblank_time);

 dev->num_crtcs = 0;
}
