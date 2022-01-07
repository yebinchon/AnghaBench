
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_framebuffer_funcs {int dummy; } ;
struct drm_framebuffer {int head; int base; struct drm_framebuffer_funcs const* funcs; struct drm_device* dev; int filp_head; int refcount; } ;
struct TYPE_2__ {int fb_lock; int fb_list; int num_fb; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int DRM_MODE_OBJECT_FB ;
 int INIT_LIST_HEAD (int *) ;
 int drm_framebuffer_reference (struct drm_framebuffer*) ;
 int drm_mode_object_get (struct drm_device*,int *,int ) ;
 int kref_init (int *) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int drm_framebuffer_init(struct drm_device *dev, struct drm_framebuffer *fb,
    const struct drm_framebuffer_funcs *funcs)
{
 int ret;

 mutex_lock(&dev->mode_config.fb_lock);
 kref_init(&fb->refcount);
 INIT_LIST_HEAD(&fb->filp_head);
 fb->dev = dev;
 fb->funcs = funcs;

 ret = drm_mode_object_get(dev, &fb->base, DRM_MODE_OBJECT_FB);
 if (ret)
  goto out;


 drm_framebuffer_reference(fb);

 dev->mode_config.num_fb++;
 list_add(&fb->head, &dev->mode_config.fb_list);
out:
 mutex_unlock(&dev->mode_config.fb_lock);

 return 0;
}
