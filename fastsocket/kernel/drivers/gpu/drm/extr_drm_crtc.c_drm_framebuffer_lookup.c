
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_framebuffer {int refcount; } ;
struct TYPE_2__ {int fb_lock; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 struct drm_framebuffer* __drm_framebuffer_lookup (struct drm_device*,int ) ;
 int kref_get (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct drm_framebuffer *drm_framebuffer_lookup(struct drm_device *dev,
            uint32_t id)
{
 struct drm_framebuffer *fb;

 mutex_lock(&dev->mode_config.fb_lock);
 fb = __drm_framebuffer_lookup(dev, id);
 if (fb)
  kref_get(&fb->refcount);
 mutex_unlock(&dev->mode_config.fb_lock);

 return fb;
}
