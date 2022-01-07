
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int base; } ;
struct drm_device {int dummy; } ;


 int DRM_MODE_OBJECT_MODE ;
 int GFP_KERNEL ;
 scalar_t__ drm_mode_object_get (struct drm_device*,int *,int ) ;
 int kfree (struct drm_display_mode*) ;
 struct drm_display_mode* kzalloc (int,int ) ;

struct drm_display_mode *drm_mode_create(struct drm_device *dev)
{
 struct drm_display_mode *nmode;

 nmode = kzalloc(sizeof(struct drm_display_mode), GFP_KERNEL);
 if (!nmode)
  return ((void*)0);

 if (drm_mode_object_get(dev, &nmode->base, DRM_MODE_OBJECT_MODE)) {
  kfree(nmode);
  return ((void*)0);
 }

 return nmode;
}
