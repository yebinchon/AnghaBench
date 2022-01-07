
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_mode_object {int id; } ;
struct TYPE_2__ {int idr_mutex; int crtc_idr; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int idr_remove (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void drm_mode_object_put(struct drm_device *dev,
    struct drm_mode_object *object)
{
 mutex_lock(&dev->mode_config.idr_mutex);
 idr_remove(&dev->mode_config.crtc_idr, object->id);
 mutex_unlock(&dev->mode_config.idr_mutex);
}
