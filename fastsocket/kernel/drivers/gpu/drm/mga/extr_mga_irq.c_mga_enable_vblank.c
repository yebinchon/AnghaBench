
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {scalar_t__ dev_private; } ;
typedef int drm_mga_private_t ;


 int DRM_ERROR (char*,int) ;
 int MGA_IEN ;
 int MGA_SOFTRAPEN ;
 int MGA_VLINEIEN ;
 int MGA_WRITE (int ,int) ;

int mga_enable_vblank(struct drm_device *dev, int crtc)
{
 drm_mga_private_t *dev_priv = (drm_mga_private_t *) dev->dev_private;

 if (crtc != 0) {
  DRM_ERROR("tried to enable vblank on non-existent crtc %d\n",
     crtc);
  return 0;
 }

 MGA_WRITE(MGA_IEN, MGA_VLINEIEN | MGA_SOFTRAPEN);
 return 0;
}
