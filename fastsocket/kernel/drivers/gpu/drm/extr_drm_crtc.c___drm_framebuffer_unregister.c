
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ id; } ;
struct drm_framebuffer {TYPE_2__ base; } ;
struct TYPE_3__ {int idr_mutex; int crtc_idr; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int __drm_framebuffer_unreference (struct drm_framebuffer*) ;
 int idr_remove (int *,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void __drm_framebuffer_unregister(struct drm_device *dev,
      struct drm_framebuffer *fb)
{
 mutex_lock(&dev->mode_config.idr_mutex);
 idr_remove(&dev->mode_config.crtc_idr, fb->base.id);
 mutex_unlock(&dev->mode_config.idr_mutex);

 fb->base.id = 0;

 __drm_framebuffer_unreference(fb);
}
