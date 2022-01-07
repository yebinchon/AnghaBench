
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_plane {int * obj; int (* disable_plane ) (struct drm_plane*) ;} ;
struct drm_plane {scalar_t__ crtc; struct drm_device* dev; } ;
struct drm_device {int struct_mutex; } ;


 int intel_enable_primary (scalar_t__) ;
 int intel_unpin_fb_obj (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct drm_plane*) ;
 struct intel_plane* to_intel_plane (struct drm_plane*) ;

__attribute__((used)) static int
intel_disable_plane(struct drm_plane *plane)
{
 struct drm_device *dev = plane->dev;
 struct intel_plane *intel_plane = to_intel_plane(plane);
 int ret = 0;

 if (plane->crtc)
  intel_enable_primary(plane->crtc);
 intel_plane->disable_plane(plane);

 if (!intel_plane->obj)
  goto out;

 mutex_lock(&dev->struct_mutex);
 intel_unpin_fb_obj(intel_plane->obj);
 intel_plane->obj = ((void*)0);
 mutex_unlock(&dev->struct_mutex);
out:

 return ret;
}
