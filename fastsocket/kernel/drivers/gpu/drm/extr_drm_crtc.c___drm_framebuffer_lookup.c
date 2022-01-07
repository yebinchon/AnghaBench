
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct drm_mode_object {scalar_t__ type; scalar_t__ id; } ;
struct drm_framebuffer {int dummy; } ;
struct TYPE_2__ {int idr_mutex; int crtc_idr; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 scalar_t__ DRM_MODE_OBJECT_FB ;
 struct drm_mode_object* idr_find (int *,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct drm_framebuffer* obj_to_fb (struct drm_mode_object*) ;

__attribute__((used)) static struct drm_framebuffer *__drm_framebuffer_lookup(struct drm_device *dev,
       uint32_t id)
{
 struct drm_mode_object *obj = ((void*)0);
 struct drm_framebuffer *fb;

 mutex_lock(&dev->mode_config.idr_mutex);
 obj = idr_find(&dev->mode_config.crtc_idr, id);
 if (!obj || (obj->type != DRM_MODE_OBJECT_FB) || (obj->id != id))
  fb = ((void*)0);
 else
  fb = obj_to_fb(obj);
 mutex_unlock(&dev->mode_config.idr_mutex);

 return fb;
}
