
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_framebuffer {int head; struct drm_device* dev; } ;
struct TYPE_2__ {int fb_lock; int num_fb; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void drm_framebuffer_cleanup(struct drm_framebuffer *fb)
{
 struct drm_device *dev = fb->dev;

 mutex_lock(&dev->mode_config.fb_lock);
 list_del(&fb->head);
 dev->mode_config.num_fb--;
 mutex_unlock(&dev->mode_config.fb_lock);
}
