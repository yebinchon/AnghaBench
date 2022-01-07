
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_framebuffer {struct drm_device* dev; } ;
struct TYPE_2__ {int fb_lock; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int __drm_framebuffer_unregister (struct drm_device*,struct drm_framebuffer*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void drm_framebuffer_unregister_private(struct drm_framebuffer *fb)
{
 struct drm_device *dev = fb->dev;

 mutex_lock(&dev->mode_config.fb_lock);

 __drm_framebuffer_unregister(dev, fb);
 mutex_unlock(&dev->mode_config.fb_lock);
}
