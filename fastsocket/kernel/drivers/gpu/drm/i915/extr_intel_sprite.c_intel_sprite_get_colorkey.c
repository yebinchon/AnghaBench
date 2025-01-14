
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_plane {int (* get_colorkey ) (struct drm_plane*,struct drm_intel_sprite_colorkey*) ;} ;
struct drm_plane {int dummy; } ;
struct drm_mode_object {int dummy; } ;
struct drm_intel_sprite_colorkey {int plane_id; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRIVER_MODESET ;
 int DRM_MODE_OBJECT_PLANE ;
 int EINVAL ;
 int ENODEV ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 struct drm_mode_object* drm_mode_object_find (struct drm_device*,int ,int ) ;
 int drm_modeset_lock_all (struct drm_device*) ;
 int drm_modeset_unlock_all (struct drm_device*) ;
 struct drm_plane* obj_to_plane (struct drm_mode_object*) ;
 int stub1 (struct drm_plane*,struct drm_intel_sprite_colorkey*) ;
 struct intel_plane* to_intel_plane (struct drm_plane*) ;

int intel_sprite_get_colorkey(struct drm_device *dev, void *data,
         struct drm_file *file_priv)
{
 struct drm_intel_sprite_colorkey *get = data;
 struct drm_mode_object *obj;
 struct drm_plane *plane;
 struct intel_plane *intel_plane;
 int ret = 0;

 if (!drm_core_check_feature(dev, DRIVER_MODESET))
  return -ENODEV;

 drm_modeset_lock_all(dev);

 obj = drm_mode_object_find(dev, get->plane_id, DRM_MODE_OBJECT_PLANE);
 if (!obj) {
  ret = -EINVAL;
  goto out_unlock;
 }

 plane = obj_to_plane(obj);
 intel_plane = to_intel_plane(plane);
 intel_plane->get_colorkey(plane, get);

out_unlock:
 drm_modeset_unlock_all(dev);
 return ret;
}
