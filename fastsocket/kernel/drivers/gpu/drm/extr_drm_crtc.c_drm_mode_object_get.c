
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_mode_object {int id; int type; } ;
struct TYPE_2__ {int idr_mutex; int crtc_idr; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int DRM_ERROR (char*) ;
 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int idr_get_new_above (int *,struct drm_mode_object*,int,int*) ;
 scalar_t__ idr_pre_get (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int drm_mode_object_get(struct drm_device *dev,
          struct drm_mode_object *obj, uint32_t obj_type)
{
 int new_id = 0;
 int ret;

again:
 if (idr_pre_get(&dev->mode_config.crtc_idr, GFP_KERNEL) == 0) {
  DRM_ERROR("Ran out memory getting a mode number\n");
  return -ENOMEM;
 }

 mutex_lock(&dev->mode_config.idr_mutex);
 ret = idr_get_new_above(&dev->mode_config.crtc_idr, obj, 1, &new_id);
 mutex_unlock(&dev->mode_config.idr_mutex);
 if (ret == -EAGAIN)
  goto again;
 else if (ret)
  return ret;

 obj->id = new_id;
 obj->type = obj_type;
 return 0;
}
