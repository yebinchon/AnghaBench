
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int DRM_ERROR (char*,int) ;

void mga_disable_vblank(struct drm_device *dev, int crtc)
{
 if (crtc != 0) {
  DRM_ERROR("tried to disable vblank on non-existent crtc %d\n",
     crtc);
 }







}
