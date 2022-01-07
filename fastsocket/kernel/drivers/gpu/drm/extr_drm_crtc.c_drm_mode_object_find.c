
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct drm_mode_object {scalar_t__ type; scalar_t__ id; } ;
struct TYPE_2__ {int idr_mutex; int crtc_idr; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 scalar_t__ DRM_MODE_OBJECT_FB ;
 int WARN_ON (int) ;
 struct drm_mode_object* idr_find (int *,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct drm_mode_object *drm_mode_object_find(struct drm_device *dev,
  uint32_t id, uint32_t type)
{
 struct drm_mode_object *obj = ((void*)0);



 WARN_ON(type == DRM_MODE_OBJECT_FB);

 mutex_lock(&dev->mode_config.idr_mutex);
 obj = idr_find(&dev->mode_config.crtc_idr, id);
 if (!obj || (obj->type != type) || (obj->id != id))
  obj = ((void*)0);
 mutex_unlock(&dev->mode_config.idr_mutex);

 return obj;
}
